
<a name="T_20FD64C7"></a>

# <span style="color:rgb(213,80,0)">Programming: A Starter Project Using MATLAB with Python</span>


[![View on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/116490-programming-a-starter-project-using-matlab-and-python) or [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python&project=MATLABwithPython.prj)

![MATLAB Versions Tested](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2FMathWorks-Teaching-Resources%2FProgramming-A-Starter-Project-Using-MATLAB-and-Python%2Frelease%2FImages%2FTestedWith.json)

**Curriculum Module**

_Created with R2022a. Compatible with R2022a and later releases._

# Information

This curriculum module contains interactive [MATLAB® live scripts](https://www.mathworks.com/products/matlab/live-editor.html) that teach fundamental concepts and basic terminology related to programming computers. 

# Prerequisite Domain Knowledge

This module assumes familiarity with basic programming concepts such as variables, data types, and functions, structures including arrays and structs, and control flows including if/else as well as how to use them in MATLAB. These ideas are all presented with interactive examples in [<u>Fundamentals of Programming</u>](https://www.mathworks.com/matlabcentral/fileexchange/103225-fundamentals-of-programming), [<u>Programming: Organizing Data</u>](https://www.mathworks.com/matlabcentral/fileexchange/115900-programming-organizing-data), [<u>Programming: Structuring Code</u>](https://www.mathworks.com/matlabcentral/fileexchange/115905-programming-structuring-code).

<a name="H_F00D98E4"></a>

## Background

You can use these live scripts as demonstrations in lectures, class activities, or interactive assignments outside class. This module explores interactions between systems by using the OpenWeather API and calling into Python from MATLAB. **Programming: A Starter Project Using MATLAB with Python** covers using the Run Python Code Live Task to run provided Python code, accessing the OpenWeather API to check the weather, extracting useful data from the API call, and using App Designer to create an app with a personalized weather display.


The instructions inside the live scripts will guide you through the exercises and activities. Get started with each live script by running it one section at a time. To stop running the script or a section midway (for example, when an animation is in progress), use the <img src="Images/EndIcon.png" width="19" alt="EndIcon.png"> Stop button in the **RUN** section of the **Live Editor** tab in the MATLAB Toolstrip.

## Contact Us

Solutions are available upon instructor request. Contact the [MathWorks teaching resources team](mailto:onlineteaching@mathworks.com) if you would like to request solutions, provide feedback, or if you have a question.

<a name="H_30BC7141"></a>

## Prerequisites

This module assumes familiarity with basic programming concepts such as variables, data types, and functions, structures including arrays and structs, and control flows including if/else as well as how to use them in MATLAB. These ideas are all presented with interactive examples in [<u>Fundamentals of Programming</u>](https://github.com/MathWorks-Teaching-Resources/Fundamentals-of-Programming), [<u>Programming: Organizing Data</u>](https://github.com/MathWorks-Teaching-Resources/Programming-Organizing-Data), [<u>Programming: Structuring Code</u>](https://github.com/MathWorks-Teaching-Resources/Programming-Structuring-Code).

<a name="H_330E72C3"></a>

## Getting Started
### Accessing the Module
### **On MATLAB Online:**

Use the [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python&project=MATLABwithPython.prj) link to download the module. You will be prompted to log in or create a MathWorks account. The project will be loaded, and you will see an app with several navigation options to get you started.

### **On Desktop:**

Download or clone this repository. Open MATLAB, navigate to the folder containing these scripts and double\-click on [MATLABwithPython.prj](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python&project=MATLABwithPython.prj). It will add the appropriate files to your MATLAB path and open an app that asks you where you would like to start. 


Ensure you have all the required products ([listed below](#H_E850B4FF)) installed. If you need to include a product, add it using the Add\-On Explorer. To install an add\-on, go to the **Home** tab and select  <img src="Images/AddOnsIcon.png" width="16" alt="AddOnsIcon.png"> **Add-Ons** > **Get Add-Ons**. 

<a name="H_E850B4FF"></a>

## Products

MATLAB® is used throughout. Tools from the Symbolic Math Toolbox™ are used to convert between different unit systems in the weather applications.

<a name="H_DC37A4D0"></a>

# Scripts

 *If you are viewing this in a version of MATLAB prior to R2023b, you can view the learning outcomes for each script* [*here*](https://github.com/MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python)*.*

<a name="H_00FC9291"></a>

## [**UsingMATLABwithPython.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python&project=MATLABwithPython.prj&file=UsingMATLABwithPython.mlx) 
| **Introductory script** <br>  | **In this script, students will...** <br>   |
| :-- | :-- |
| <img src="Images/RunPythonLiveTask.png" width="171" alt="RunPythonLiveTask.png"> <br>  | <br>-  check that an appropriate version of Python is installed and visible within MATLAB <br> <br>-  explore the Run Python Code Live Task <br> <br>-  try running Python commands and a Python script from MATLAB <br>   |

<a name="H_39C74124"></a>

## [**CheckingTheWeather.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python&project=MATLABwithPython.prj&file=CheckingTheWeather.mlx) 
| **Investigatory script** <br>  | **In this script, students will...** <br>   |
| :-- | :-- |
| <img src="Images/image_4.png" width="171" alt="image_4.png"> <br>  | <br>-  set up an account with OpenWeather to create your own API key <br> <br>-  use existing Python code to make an API call to OpenWeather <br> <br>-  use MATLAB to explore the data returned by the API call, including data type conversions and unit conversions <br>   |

<a name="H_4BF94628"></a>

## [**CreateCurrentWeatherApp.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python&project=MATLABwithPython.prj&file=CreateCurrentWeatherApp.mlx) 
| **Application script** <br>  | **In this script, students will...** <br>   |
| :-- | :-- |
| <img src="Images/image_5.png" width="171" alt="image_5.png"> <br>  | <br>-  use App Designer to build a custom app using the code from CheckingTheWeather.mlx <br> <br>-  create callbacks, properties, and functions <br> <br>-  design and organize a UI with drag and drop elements <br> <br>-  reuse code from CheckingTheWeather in a new context <br>   |

<a name="H_7E8A01DA"></a>

# Apps

Both of these apps require running Python from MATLAB, as set up in [UsingMATLABwithPython](#H_00FC9291) and an OpenWeather API key, as set up in [CheckingTheWeather](#H_39C74124).

-  **<samp>CurrentWeatherAppDemo.mlapp</samp>** shows the results of working through CreateCurrentWeatherApp.  
-  **<samp>WeatherDisplay.mlapp</samp>** shows one elaborated version of the basic current weather app.  
<a name="H_D4A29FD4"></a>

# Additional Scripts

For those with a legacy OpenWeather API key, or the willingness to sign up for the OneCall 3.0 API, the original weather forecasting exploration from this courseware module is included as well.


[WeatherForecast.mlx](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python&project=MATLABwithPython.prj&file=WeatherForecast.mlx)


[SampleWeatherDashboard.mlx](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python&project=MATLABwithPython.prj&file=SampleWeatherDashboard.mlx)

<a name="H_25E830D2"></a>

# License

The license for this module is available in the [LICENSE.md](https://github.com/MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python/blob/release/LICENSE.md).

<a name="H_CB47A99B"></a>

# Related Courseware Modules
| **Courseware Module** <br>  | **Sample Content** <br>  | **Available on:** <br>   |
| :-- | :-- | :-- |
| [**Fundamentals of Programming**](https://www.mathworks.com/matlabcentral/fileexchange/103225-fundamentals-of-programming)  <br> Learn the basics of how to make a computer  <br> accept, store, and compute with information <br>  | <img src="Images/image_6.png" width="171" alt="image_6.png"> <br>  | [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/103225-fundamentals-of-programming) <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](http://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Fundamentals-of-Programming&project=FundamentalsofProgramming.prj) <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Fundamentals-of-Programming) <br>   |
| [**Programming: Structuring Code**](https://www.mathworks.com/matlabcentral/fileexchange/115905-programming-structuring-code) <br> Learn how to organize your code into functions,  <br> debug, comment, and share <br>  | <img src="Images/image_9.png" width="171" alt="image_9.png"> <br>  | [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/115905-programming-structuring-code) <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-Structuring-Code&project=StructuringCode.prj) <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Programming-Structuring-Code) <br>   |
| <br>[**Programming: Organizing Data**](https://www.mathworks.com/matlabcentral/fileexchange/115900-programming-organizing-data) <br> Learn more about strings, numeric data types,  <br> memory, and ways of storing data <br>  | <img src="Images/image_12.png" width="171" alt="image_12.png"> <br>  | [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/115900-programming-organizing-data) <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-Organizing-Data&project=OrganizingData.prj) <br>[GitHub](https://github.com/MathWorks-Teaching-Resources/Programming-Organizing-Data) <br>   |


Or feel free to explore our other [modular courseware content](https://www.mathworks.com/matlabcentral/fileexchange/?q=tag%3A%22courseware+module%22&sort=downloads_desc_30d).

# Educator Resources
-  [Educator Page](https://www.mathworks.com/academia/educators.html) 
<a name="H_0FA5DA18"></a>

# Contribute 

Looking for more? Find an issue? Have a suggestion? Please contact the [MathWorks teaching resources team](mailto:%20onlineteaching@mathworks.com). If you want to contribute directly to this project, you can find information about how to do so in the [CONTRIBUTING.md](https://github.com/MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python/blob/release/CONTRIBUTING.md) page on GitHub.

# Acknowledgements

Many thanks to Blake Naccarato on his suggestions for improvement.


 *©* Copyright 2024 The MathWorks™, Inc



