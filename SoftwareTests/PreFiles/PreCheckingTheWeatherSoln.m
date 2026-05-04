%  Pre-run script for CheckingTheWeatherSoln.mlx
% ---- Known Issues     -----
KnownIssuesID = "";
% ---- Pre-run commands -----
 
try 
copyfile(fullfile(currentProject().RootFolder,"InternalFiles","Solutions","myAPIkey.txt"),...
    fullfile(currentProject().RootFolder,"Scripts","myAPIkey.txt"))
catch
    disp("No API key found.")
%     % copyfile("Response.json",fullfile(currentProject().RootFolder,"InstructorResources","Solutions","Response.json"))
%     % pycode = ["import checkcurrentweather"
%     % "import json"
%     % ""
%     % "json_data = json.load(open(""Response.json""))"
%     % "currentWeather = checkcurrentweather.parse_current_json(json_data)"
%     % ];
%     apikey = "TestString";
    % pyrun = @(txt,out,varargin)TestPyRun(pycode,out,varargin);
end
% 
% function out = TestPyRun(txt,in,varargin)
% out = pyrun(txt,in);
% end
