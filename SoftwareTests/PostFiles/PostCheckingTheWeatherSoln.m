%  Post-run script for CheckingTheWeatherSoln.m
% ---- Post-run commands -----

writelines("",fullfile(currentProject().RootFolder,"Scripts","myAPIkey.txt"))
if exist(fullfile(currentProject().RootFolder,"InstructorResources","Solutions","Response.json"),"file")
    delete(fullfile(currentProject().RootFolder,"InstructorResources","Solutions","Response.json"))
end
% <matlab:ShareFeedback Share your feedback>
