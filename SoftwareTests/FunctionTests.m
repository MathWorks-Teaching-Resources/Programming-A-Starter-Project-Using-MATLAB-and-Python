classdef FunctionTests < matlab.unittest.TestCase

    % https://www.mathworks.com/help/matlab/matlab_prog/use-parameters-in-class-based-tests.html

    methods(Test)    

        function IsKnownPythonVersion(testCase)
            Known = CheckPythonVersion;
            verifyTrue(testCase,Known)
        end

    end % methods

end % classdef