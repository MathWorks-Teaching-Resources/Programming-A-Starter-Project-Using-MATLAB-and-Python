classdef SmokeTests < matlab.unittest.TestCase

    properties (ClassSetupParameter)
        Project = {''};
    end

    properties (TestParameter)
        Scripts;
    end

    methods (TestParameterDefinition,Static)

        function Scripts = GetScriptName(Project)
            RootFolder = currentProject().RootFolder;
            Scripts = dir(fullfile(RootFolder,"Scripts","*.mlx"));
            Scripts = {Scripts.name};
        end

    end

    methods (TestClassSetup)

        function SetUpSmokeTest(testCase,Project)
            try
                currentProject;
            catch ME
                warning("Project is not loaded.")
            end
        end


    end



    methods(Test)

        function SmokeRun(testCase,Scripts)
            Filename = string(Scripts);
            switch (Filename)
                case "CreateCurrentWeatherApp.mlx"
                    disp("Skipping " + Filename)
                case "CheckingTheWeather.mlx"
                    txt = readlines("Response.json");
                    pycode = ["import checkcurrentweather"
                        "import json"
                        ""
                        "json_data = json.loads(txt)"
                        "currentWeather = checkcurrentweather.parse_current_json(json_data)"
                        ];
                    APISmokeTest(testCase,Filename,pycode,txt)
                case "WeatherForecast.mlx"
                    % txt = readlines("ResponseOneCall.json");
                    % pycode = ["import checkweather"
                    %     ""
                    %     "json_data = json.loads(txt)"
                    %     "currentWeather = checkweather.parse_current_json(json_data)"
                    %     "forecastWeather = checkweather.parse_forecast_json(json_data)"
                    %     ];
                    % APISmokeTest(testCase,Filename,pycode,txt)    
                case "SampleWeatherDashboard.mlx"
                    
                otherwise
                    SimpleSmokeTest(testCase,Filename)
            end
        end

    end


    methods (Access = private)

        function APISmokeTest(testCase,Filename,pycode,txt)
            RootFolder = currentProject().RootFolder;
            cd(RootFolder)
            cd Scripts
            if Filename == "CheckingTheWeather.mlx"
            [currentWeather] = pyrun(pycode, "currentWeather","txt",txt);
            elseif Filename == "WeatherForecast.mlx"
                [currentWeather,forecastWeather] = pyrun(pycode,["currentWeather","forecastWeather"],"txt",txt);
            end

            disp(">> Running " + Filename);
            try
                run(fullfile(Filename));
            catch ME
                testCase.verifyTrue(false,ME.message);
            end

            try
            % Log the opened figures to the test reports
            Figures = findall(groot,'Type','figure');
            Figures = flipud(Figures);
            if ~isempty(Figures)
                for f = 1:size(Figures,1)
                    FigDiag = matlab.unittest.diagnostics.FigureDiagnostic(Figures(f));
                    log(testCase,1,FigDiag);
                end
            end
            catch ME
                disp("Failed to capture images")
            end
            close all
        end

        function RunMyFile(~,Filename)
            run(Filename);
        end

        function SimpleSmokeTest(testCase,Filename)

            % Run the Smoke test
            RootFolder = currentProject().RootFolder;
            cd(RootFolder)
            disp(">> Running " + Filename);
            try
                RunMyFile(testCase,Filename)
            catch ME
                testCase.verifyTrue(false,ME.message);
            end

            % Log the opened figures to the test reports
            try
            Figures = findall(groot,'Type','figure');
            Figures = flipud(Figures);
            if ~isempty(Figures)
                for f = 1:size(Figures,1)
                    FigDiag = matlab.unittest.diagnostics.FigureDiagnostic(Figures(f));
                    log(testCase,1,FigDiag);
                end
            end
            catch ME
                disp("Failed to capture figures")
            end
            close all

        end

    end

    methods (TestClassTeardown)

        function closeAllFigure(testCase)
            close all force  % Close figure windows
        end

    end % methods (TestClassTeardown)

end