%  Pre-run script for CreateCurrentWeatherApp.m
% ---- Known Issues     -----
KnownIssuesID = "";
% ---- Pre-run commands -----
 
appdesigner = @()disp("Open App Designer here.");
open = @(str)MyOpen(str);
% <matlab:ShareFeedback Share your feedback>

function MyOpen(str)
assert(exist(str,"file"))
disp("Open the file " + str + " in Editor.")
end