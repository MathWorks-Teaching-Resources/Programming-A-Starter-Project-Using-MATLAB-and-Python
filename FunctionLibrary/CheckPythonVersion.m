function flag = CheckPythonVersion(opts)
arguments
    opts.Flag (1,1) string {mustBeMember(opts.Flag,["SetupScript" "ProjectScript"])}="SetupScript"
end
% The flag is to check whether this script is registering a planned-for
% Python version. If the Python is recognized, flag = true, if the Python
% version is nonexistent or not recognized flag = false.
flag = true;
if isempty(pyenv().Version) || pyenv().Version == ""
    flag = false;
    disp("Python is not installed.")
    web("https://www.mathworks.com/help/matlab/matlab_external/install-supported-python-implementation.html")
    return
else
    pyVersion = pyenv().Version;
end

disp("You are running Python " + pyVersion)
if pyenv().Status == "Loaded"
    disp("Python was already on your MATLAB path.")
else
    addpath(pyenv().Home)
    disp("Python has been added to your MATLAB path.")
end

if extractBefore(pyVersion,".") == "2"
    if pyVersion == "2.7" && isMATLABReleaseOlderThan("R2023a") && opts.Flag == "SetupScript"
        disp("You can run Python code in this script, but you cannot complete the project unless you have Python 3.8 or 3.9")
    else
        disp("This version of Python is not supported. Please see ")
        web("https://www.mathworks.com/help/matlab/matlab_external/install-supported-python-implementation.html")
    end
else
    x = extractAfter(pyVersion,".");
    if double(x) < 8
        disp("This Python version might work, but it has not been tested.")
    elseif x == "8"
        CheckPythonAndMATLABCompatibility("R2020b",End="R2023b")
    elseif x == "9"
        CheckPythonAndMATLABCompatibility("R2021b",End="R2025b")
    elseif x == "10"
        CheckPythonAndMATLABCompatibility("R2022b",End="R2026b")
    elseif x == "11"
        CheckPythonAndMATLABCompatibility("R2024a")
    elseif x == "12"
        CheckPythonAndMATLABCompatibility("R2024b")
    elseif x == "13"
        CheckPythonAndMATLABCompatibility("R2025b")
   elseif x == "14"
       CheckPythonAndMATLABCompatibility("R2026b")
    elseif double(x) > 13
        flag = false;
        disp("This Python version should work, but it has not been tested on this courseware.")
        web("https://www.mathworks.com/support/requirements/python-compatibility.html")
    else
        flag = false;
        disp("This Python version might work, but it has not been tested on this courseware.")
        web("https://www.mathworks.com/support/requirements/python-compatibility.html")
    end
end
end

%%
function CheckPythonAndMATLABCompatibility(ver1,opts)
arguments
    ver1 (1,1) string
    opts.End (1,1) string = "unknown"
end
if isMATLABReleaseOlderThan(ver1)
    disp("Your Python version is fine, but you need to update your MATLAB version to allow them to work together.")
    web("https://www.mathworks.com/support/requirements/python-compatibility.html")
    web("https://www.mathworks.com/help/install/ug/get-new-matlab-release.html")
elseif opts.End == "unknown" || isMATLABReleaseOlderThan(opts.End)
    disp("You are running compatible versions of MATLAB and Python.")
else
    disp("Please update your Python version to be compatible with this MATLAB release.")
    disp("Please follow the instructions in the documentation to proceed with this script.")
    web("https://www.mathworks.com/content/dam/mathworks/mathworks-dot-com/support/sysreq/files/python-compatibility.pdf")
    web("https://www.mathworks.com/help/matlab/matlab_external/install-supported-python-implementation.html")
end
end

%[appendix]{"version":"1.0"}
%---
