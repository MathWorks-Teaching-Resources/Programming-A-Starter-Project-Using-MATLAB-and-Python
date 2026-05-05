%  Pre-run script for UsingMATLABwithPython.mlx
% ---- Known Issues     -----
KnownIssuesID = "";
% ---- Pre-run commands -----
 
open = @(str)MyOpen(str);

function MyOpen(str)
assert(exist(str,"file"))
disp("Open the file " + str + " in Editor.")
end