
# <span style="color:rgb(213,80,0)">Programming: A Starter Project Using MATLAB with Python</span>

Learn how to call Python code, convert data types and units, and use App Designer to build an app to display your results.

[![View on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/116490-programming-a-starter-project-using-matlab-and-python) or [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python&project=MATLABwithPython.prj&file=README.mlx)

[![MATLAB Versions Tested](https://img.shields.io/endpoint?url=https://mathworks-teaching-resources.github.io/Programming-A-Starter-Project-Using-MATLAB-and-Python/TestedWith.json)](https://MathWorks-Teaching-Resources.github.io/Programming-A-Starter-Project-Using-MATLAB-and-Python)

**Curriculum Module**

_Created with R2024a. Compatible with R2024a and later releases._

# Information

This curriculum module contains interactive [MATLAB® live scripts](https://www.mathworks.com/products/matlab/live-editor.html) that teach fundamental concepts and basic terminology related to programming computers. 

# Prerequisite Domain Knowledge

This module assumes familiarity with basic programming concepts such as variables, data types, and functions, structures including arrays and structs, and control flows including if/else as well as how to use them in MATLAB. These ideas are all presented with interactive examples in [<u>Fundamentals of Programming</u>](https://www.mathworks.com/matlabcentral/fileexchange/103225-fundamentals-of-programming), [<u>Programming: Organizing Data</u>](https://www.mathworks.com/matlabcentral/fileexchange/115900-programming-organizing-data), [<u>Programming: Structuring Code</u>](https://www.mathworks.com/matlabcentral/fileexchange/115905-programming-structuring-code).


## Background

You can use these live scripts as demonstrations in lectures, class activities, or interactive assignments outside class. This module explores interactions between systems by using the OpenWeather API and calling into Python from MATLAB. **Programming: A Starter Project Using MATLAB with Python** covers using the Run Python Code Live Task to run provided Python code, accessing the OpenWeather API to check the weather, extracting useful data from the API call, and using App Designer to create an app with a personalized weather display.


The instructions inside the live scripts will guide you through the exercises and activities. Get started with each live script by running it one section at a time. To stop running the script or a section midway (for example, when an animation is in progress), use the <img src="Images/EndIcon.png" width="19" alt="EndIcon.png"> Stop button in the **RUN** section of the **Live Editor** tab in the MATLAB Toolstrip.

## Contact Us

Contact the [MathWorks Educator Content Development Team](mailto:onlineteaching@mathworks.com) if you would like to request assistance, provide feedback, or if you have a question.


## Prerequisites

This module assumes familiarity with basic programming concepts such as variables, data types, and functions, structures including arrays and structs, and control flows including if/else as well as how to use them in MATLAB. These ideas are all presented with interactive examples in [<u>Fundamentals of Programming</u>](https://github.com/MathWorks-Teaching-Resources/Fundamentals-of-Programming), [<u>Programming: Organizing Data</u>](https://github.com/MathWorks-Teaching-Resources/Programming-Organizing-Data), [<u>Programming: Structuring Code</u>](https://github.com/MathWorks-Teaching-Resources/Programming-Structuring-Code).


## Getting Started
### Accessing the Module
### **On MATLAB Online:**

Use the [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python&project=MATLABwithPython.prj) link to download the module. You will be prompted to log in or create a MathWorks account. The project will be loaded, and you will see an app with several navigation options to get you started.

### **On Desktop:**

Download or clone this repository. Open MATLAB, navigate to the folder containing these scripts and double\-click on [MATLABwithPython.prj](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python&project=MATLABwithPython.prj&file=README.mlx). It will add the appropriate files to your MATLAB path and open an app that asks you where you would like to start. 


Ensure you have all the required products (listed below) installed. If you need to include a product, add it using the Add\-On Explorer. To install an add\-on, go to the **Home** tab and select  <img src="Images/AddOnsIcon.png" width="16" alt="AddOnsIcon.png"> **Add-Ons** > **Get Add-Ons**. 


## Products

MATLAB® is used throughout. Tools from the Symbolic Math Toolbox™ are used to convert between different unit systems in the weather applications.

# Scripts
## [**UsingMATLABwithPython.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python&project=MATLABwithPython.prj&file=Scripts/UsingMATLABwithPython.mlx) 
|      |      |
| :-- | :-- |
| **Introductory script** <br>  | **In this script, students will...** <br>   |
| <img src="Images/RunPythonLiveTask.png" width="171" alt="RunPythonLiveTask.png"> <br>  | $\bullet$ check that an appropriate version of Python is installed and visible within MATLAB <br> $\bullet$ explore the Run Python Code Live Task <br> $\bullet$ try running Python commands and a Python script from MATLAB <br>   |
|      |       |

## [**CheckingTheWeather.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python&project=MATLABwithPython.prj&file=Scripts/CheckingTheWeather.mlx) 
|      |      |
| :-- | :-- |
| **Investigatory script** <br>  | **In this script, students will...** <br>   |
| <img src="Images/WeatherStruct.png" width="171" alt="WeatherStruct.png"> <br>  | $\bullet$ set up an account with OpenWeather to create your own API key <br> $\bullet$ use existing Python code to make an API call to OpenWeather <br> $\bullet$ use MATLAB to explore the data returned by the API call, including data type conversions and unit conversions <br>   |
|      |       |

## [**CreateCurrentWeatherApp.mlx**](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python&project=MATLABwithPython.prj&file=Scripts/CreateCurrentWeatherApp.mlx) 
|      |      |
| :-- | :-- |
| **Application script** <br>  | **In this script, students will...** <br>   |
| <img src="Images/WeatherDashboard.png" width="171" alt="WeatherDashboard.png"> <br>  | $\bullet$ use App Designer to build a custom app using the code from CheckingTheWeather.mlx <br> $\bullet$ create callbacks, properties, and functions <br> $\bullet$ design and organize a UI with drag and drop elements <br> $\bullet$ reuse code from CheckingTheWeather in a new context <br>   |
|      |       |

# Apps

Both of these apps require running Python from MATLAB, as set up in UsingMATLABwithPython and an OpenWeather API key, as set up in CheckingTheWeather.

-  **<samp>CurrentWeatherAppDemo.mlapp</samp>** shows the results of working through CreateCurrentWeatherApp.  
-  **<samp>WeatherDisplay.mlapp</samp>** shows one elaborated version of the basic current weather app.  

# License

The license for this module is available in the [LICENSE.md](https://github.com/MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python/blob/release/LICENSE.md).

# Related Courseware Modules
|      |      |      |
| :-- | :-- | :-- |
| **Courseware Module** <br>  | **Sample Content** <br>  | **Available on:** <br>   |
| [**Fundamentals of Programming**](https://www.mathworks.com/matlabcentral/fileexchange/103225-fundamentals-of-programming)  <br> Learn the basics of how to make a computer  <br> accept, store, and compute with information <br>  | <img src="Images/MouseThoughtBubble.png" width="171" alt="MouseThoughtBubble.png"> <br>  | [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/103225-fundamentals-of-programming) <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Fundamentals-of-Programming&project=FundamentalsofProgramming.prj) <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Fundamentals-of-Programming) <br>   |
| [**Programming: Structuring Code**](https://www.mathworks.com/matlabcentral/fileexchange/115905-programming-structuring-code) <br> Learn how to organize your code into functions,  <br> debug, comment, and share <br>  | <img src="Images/RGBTurkeys.png" width="171" alt="RGBTurkeys.png"> <br>  | [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/115905-programming-structuring-code) <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-Structuring-Code&project=StructuringCode.prj) <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Programming-Structuring-Code) <br>   |
| [**Programming: Organizing Data**](https://www.mathworks.com/matlabcentral/fileexchange/115900-programming-organizing-data) <br> Learn more about strings, numeric data types,  <br> memory, and ways of storing data <br>  | <img src="Images/SeaSurfaceTemps.png" width="171" alt="SeaSurfaceTemps.png"> <br>  | [<img src="Images/OpenInFX.png" width="91" alt="OpenInFX.png">](https://www.mathworks.com/matlabcentral/fileexchange/115900-programming-organizing-data) <br> [<img src="Images/OpenInMO.png" width="136" alt="OpenInMO.png">](https://matlab.mathworks.com/open/github/v1?repo=MathWorks-Teaching-Resources/Programming-Organizing-Data&project=OrganizingData.prj) <br> [GitHub](https://github.com/MathWorks-Teaching-Resources/Programming-Organizing-Data) <br>   |
|      |      |       |


Or feel free to explore our other [modular courseware content](https://www.mathworks.com/matlabcentral/fileexchange/?q=author%3A%22MathWorks+Educator+Content+Development+Team%22&sort=relevancy).

# Educator Resources
-  [Educator Page](https://www.mathworks.com/academia/educators.html) 

# Contribute 

Looking for more? Find an issue? Have a suggestion? Please contact the [MathWorks Educator Content Development team](mailto:%20onlineteaching@mathworks.com). If you want to contribute directly to this project, you can find information about how to do so in the [CONTRIBUTING.md](https://github.com/MathWorks-Teaching-Resources/Programming-A-Starter-Project-Using-MATLAB-and-Python/blob/release/CONTRIBUTING.md) page on GitHub.

# Acknowledgments

Many thanks to Blake Naccarato on his suggestions for improvement.


*©* Copyright 2025 The MathWorks, Inc


