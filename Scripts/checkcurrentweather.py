# -*- coding: utf-8 -*-
'''
Python 3.8 code
Created on Thu Jan  4 20:41:45 2018
Modified May 2022

@author: Heather Gorr
Updated by: Emma Smith Zbarsky
Copyright 2018-2022 The MathWorks, Inc.

Create the Openweather API-structured URL using One Call 
as described in the documentation
https://openweathermap.org/api/one-call-api
This API is licensed under CC BY-SA 4.0, as documented here:
https://creativecommons.org/licenses/by-sa/4.0/
'''

# checkcurrentweather.py
import datetime
import json  
import urllib.request

BASE_URL = 'http://api.openweathermap.org/data/2.5/weather?lat={}&lon={}&units={}&appid={}'

def get_weather(lat,lon,apikey,**kwargs):  
    '''get current conditions in specified location, e.g., 
    lat = 42.2775 N, lon = 71.3468 W is Natick, MA, US
    get_current_weather('42.2775','-71.3468',key,units='metric')'''
    
    # Set a default of imperial units
    info = {'units':'imperial'}     
    for key, value in kwargs.items():
        info[key] = value
    
    try:
        url = BASE_URL.format(lat,lon,info['units'],apikey)
        json_data = json.loads(urllib.request.urlopen(url).read())        
    except urllib.error.URLError:
        # if the One Call weather API doesn't work, return an error
        print('We cannot access the weather service')  

    return json_data


def parse_current_json(json_data):
    '''parse and extract json data from the current weather data''' 

    try:
        # select data of interest from dictionary
        weather_info = json_data['main']
        # add current date and time
        weather_info['local_time'] = str(datetime.datetime.now())
        weather_info['current_time'] = json_data['dt']
        # make sure values are returned as floats
        weather_info['temp'] = float(weather_info['temp'])
        weather_info['feels_like'] = float(weather_info['feels_like'])
        weather_info['pressure'] = float(weather_info['pressure'])
        weather_info['humidity'] = float(weather_info['humidity'])
        weather_info['wind_speed'] = float(json_data['wind']['speed'])
        weather_info['wind_deg'] = float(json_data['wind']['deg'])
        weather_info['clouds'] = float(json_data['clouds']['all'])
        # Seconds shifted from UTC for location
        weather_info['timezone'] = json_data['timezone']
        # UTC Unix time 
        weather_info['sunrise'] = json_data['sys']['sunrise']
        weather_info['sunset'] = json_data['sys']['sunset']
        # String
        weather_info['city_name'] = json_data['name']
        # Weather description as list
        weather_info['weather'] = json_data['weather']

    except KeyError as e:
        print('Something went wrong while parsing current json')
        raise e
    
    return weather_info