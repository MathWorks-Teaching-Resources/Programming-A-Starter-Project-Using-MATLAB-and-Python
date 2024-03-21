function ProjectStartup
% Set up check for version number
proj = currentProject;

% Address changes in the MATLAB language and capabilities
MoveFilesAround("R2023b","MainMenu.mlx",proj)
MoveFilesAround("R2023b","README.mlx",proj)
MoveFilesAround("R2024a","UsingMATLABwithPython.mlx",proj)
MoveFilesAround("R2024a","CheckingTheWeather.mlx",proj)

% Offer navigation aids and feedback opportunities
ProjectStartupApp
end

function MoveFilesAround(ReleaseString,FileString,proj,opts)
arguments
    ReleaseString (1,1) string {mustBeRelease}
    FileString (1,1) string {mustLookLikeFile}
    proj 
    opts.OldStr (1,1) string = "Old"
    opts.NewStr (1,1) string = "New"
    opts.Flag (1,1) string {mustBeMember(opts.Flag,["Open" "Close"])} = "Open"
end

if ~contains(ReleaseString,"R")
    ReleaseString = "R"+ReleaseString;
end
[FileLoc,FileName,FileExt] = fileparts(which(FileString));

FileStringOld = FileName+opts.OldStr+FileExt;
FileStringNew = FileName+opts.NewStr+FileExt;
FileString = string(FileName)+FileExt;

if isMATLABReleaseOlderThan(ReleaseString)
    try
        if opts.Flag == "Open"
            if exist(fullfile(proj.RootFolder,"Utilities","OldVersions",FileStringOld),"file")
                movefile(fullfile(FileLoc,FileString), fullfile("Utilities","OldVersions",FileStringNew))
                movefile(fullfile("Utilities","OldVersions",FileStringOld),fullfile(FileLoc,FileString))
            end
        % else
        %     if exist(fullfile(proj.RootFolder,"Utilities","OldVersions",FileStringNew),"file")
        %         movefile(fullfile(FileLoc,FileString), fullfile("Utilities","OldVersions",FileStringOld))
        %         movefile(fullfile("Utilities","OldVersions",FileStringNew),fullfile(FileLoc,FileString))
        %     end
        end
    catch
        disp("Failed to move " + FileString + ".")
    end
else
    try
        if opts.Flag == "Open"
            if exist(fullfile(proj.RootFolder,"Utilities","OldVersions",FileStringNew),"file")
                movefile(fullfile(FileLoc,FileString), fullfile("Utilities","OldVersions",FileStringOld))
                movefile(fullfile("Utilities","OldVersions",FileStringNew),fullfile(FileLoc,FileString))
            end
        end
    catch
        disp("Failed to move " + FileString + ".")
    end
end
end

function mustBeRelease(str)
if ~contains(str,"R")
    str = "R"+str;
end
pattern = "R"+digitsPattern(4)+("a"|"b");
assert(matches(str,pattern),"ReleaseString must be a valid MATLAB release.")
end

function mustLookLikeFile(str)
[~,f,e] = fileparts(str);
assert(~isempty(f))
assert(e==".mlx"|e==".m"|e==".slx")
end