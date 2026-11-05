%  Pre-run script for CheckingTheWeather.m
% ---- Known Issues     -----
KnownIssuesID = "";
% ---- Pre-run commands -----
 
txt = readlines("Response.json");
curpath = pwd;
mypath = fullfile(currentProject().RootFolder,"Scripts");
cd(mypath)
pycode = ["import checkcurrentweather"
    "import json"
    ""
    "json_data = json.loads(txt)"
    "currentWeather = checkcurrentweather.parse_current_json(json_data)"
    ];
[currentWeather] = pyrun(pycode, "currentWeather","txt",txt);
cd(curpath)
% <matlab:ShareFeedback Share your feedback>
