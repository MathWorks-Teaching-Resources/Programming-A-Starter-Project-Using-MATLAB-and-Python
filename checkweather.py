# -*- coding: utf-8 -*-
'''
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

# checkweather.py
import datetime
import json  
import urllib.request

BASE_URL = 'http://api.openweathermap.org/data/2.5/onecall?lat={}&lon={}&exclude=minutely,daily,alerts&units={}&appid={}'

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
        weather_info = json_data["current"]
        # add current date and time
        weather_info['current_time'] = str(datetime.datetime.now())
        # make sure values are returned as floats
        weather_info['temp'] = float(weather_info['temp'])
        weather_info['feels_like'] = float(weather_info['feels_like'])
        weather_info['pressure'] = float(weather_info['pressure'])
        weather_info['humidity'] = float(weather_info['humidity'])
        weather_info['wind_speed'] = float(weather_info['wind_speed'])
        weather_info['wind_deg'] = float(weather_info['wind_deg'])
        weather_info['uvi'] = float(weather_info['uvi'])
        weather_info['clouds'] = float(weather_info['clouds'])
        weather_info['timezone'] = json_data['timezone']

    except KeyError as e:
        print('Something went wrong while parsing current json')
        raise e
    
    return weather_info


def parse_forecast(json_data):
    '''parse and extract json data from the forecast weather data''' 

    import array
    
    try:
        timezone = json_data['timezone']
        data = json_data['hourly']
        # create arrays
        temp = []
        pressure = []
        humidity = []
        speed = []
        deg = []
        date = []
        
        # loop over all and add to arrays
        for i in range(48):
            x1 = data[i]
            temp.append(x1['temp'])
            pressure.append(x1['pressure'])
            humidity.append(x1['humidity'])
            speed.append(x1['wind_speed'])
            deg.append(x1['wind_deg'])
            date.append(x1['dt'])
                       
        # create dictionary
        weather_info = dict(current_time=date,temp=temp,deg=deg,
                                speed=speed,humidity=humidity,pressure=pressure,timezone=timezone)         
    except KeyError as e:
        print('Something went wrong with parsing the forecast json.')
        raise e

    return weather_info
