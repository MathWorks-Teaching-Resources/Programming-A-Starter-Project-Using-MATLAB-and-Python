%  Pre-run script for CreateCurrentWeatherApp.mlx
% ---- Known Issues     -----
KnownIssuesID = "";
% ---- Pre-run commands -----
 
appdesigner = @()disp("Open App Designer here.");
open = @(str)MyOpen(str);

function MyOpen(str)
assert(exist(str,"file"))
disp("Open the file " + str + " in Editor.")
end