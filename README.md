# Programming: A Starter Project Using MATLAB with Python 
[![View Programming-A-Starter-Project-Using-MATLAB-and-Python on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/116490-programming-a-starter-project-using-matlab-and-python)
**Curriculum Module**  
_Created with R2022a. Compatible with R2022a and later releases._ 

## Description ##
This curriculum module contains interactive [live scripts](https://www.mathworks.com/products/matlab/live-editor.html) that teach fundamental concepts and basic terminology related to programming computers. 
This module explores interactions between systems by using the OpenWeather API and calling into Python from MATLAB.
**Programming: A Starter Project Using MATLAB with Python** covers downloading and installing a Live Task to run Python code 
from a Git repository, accessing the OpenWeather API to check the weather, and choosing how to package the weather 
reports into your personalized weather display.

These lessons can be used as part of a lecture, as activities in an instructional setting, or as interactive assignments 
to be completed outside of class.

Get started with the Programming: A Starter Project Using MATLAB with Python interactive examples by downloading 
and unzipping the repository. Then, double-click the MATLABwithPython.prj file inside MATLAB&reg;. From there, 
you can follow the landing page instructions to get started with the examples. The instructions inside the live 
scripts will guide you through the exercises and activities. Get started with each live script by running it one 
section at a time. To stop running the script or a section midway (for example, if a loop is running longer than 
intended), click the <img src="https://user-images.githubusercontent.com/88841524/182219991-17ef7bf9-369b-4463-8de6-9e440ca3bc9b.png" height="16" style="vertical-align:top"> 
**Stop** button in the **RUN** section of the **Live Editor** tab in the MATLAB Toolstrip.

## Prerequisite Domain Knowledge ##
This module assumes familiarity with basic programming concepts such as variables, data types, and functions, 
structures including arrays and structs, and control flows including if/else as well as how to use them in MATLAB. 
These ideas are all presented with interactive examples in 
[Fundamentals of Programming](https://www.mathworks.com/matlabcentral/fileexchange/103225-fundamentals-of-programming), 
[Programming: Organizing Data](https://www.mathworks.com/matlabcentral/fileexchange/115900-programming-organizing-data), 
[Programming: Structuring Code](https://www.mathworks.com/matlabcentral/fileexchange/115905-programming-structuring-code).

## Details ##

## ##
**UsingMATLABwithPython.mlx**
This script introduces the Run Python Code Live Task, as well as walking through checking that an appropriate version 
of Python is installed and visible to MATLAB.

<img src="https://user-images.githubusercontent.com/88841524/175090875-ba57e216-499d-45fc-9897-7c4100396299.png" width="500">

**Learning Goals:**
In this script, students will...
- check that an appropriate version of Python is installed and visible within MATLAB.
- download and install the Run Python Code Live Task.
- try running Python commands and a Python script from MATLAB.

## ##
**CheckingTheWeather.mlx**
This script introduces the OpenWeather API, walking through setting up an account to get an API key, using an existing python script to access the API, and then investigation of the data that is returned.

<img src="https://user-images.githubusercontent.com/88841524/175094710-f3d6f2d1-ccd5-4068-99f4-eaec9cc1b8b8.png" width="500">

**Learning Goals:**
In this script, students will...
- set up an account with OpenWeather to create your own API key.
- use checkweather.py to make an API call to OpenWeather.
- use MATLAB to explore the data returned by checkweather.py, including data type conversions, 
unit conversions, and data visualization options.

## ##
**MyWeatherDashboard.mlx**
This script presents an example of a cleaned-up final product from following the directions in `CheckingTheWeather.mlx`. It uses a live script with Code Hidden to offer a pleasant user experience.

<img src="https://user-images.githubusercontent.com/88841524/175093931-32c092f4-5714-4642-ab25-442fbb0116d0.gif" width="500">

**Learning Goals:**
In this script, students will
- use hidden code interactions in live scripts to design a streamlined user experience.

## Products ##
MATLAB&reg;, Symbolic Math Toolbox&trade;

## License ##
The license for this module is available in the [License.md](LICENSE.md) file in this GitHub repository.

## Support ##
Have any questions or feedback? Are you an instructor who would like solutions? Contact the <a href="mailto:onlineteaching@mathworks.com">MathWorks online teaching team.</a>

# #
_Copyright 2022 The MathWorks, Inc._
