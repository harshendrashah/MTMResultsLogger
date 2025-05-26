classdef TestResultsViewPlugin < matlab.unittest.plugins.TestRunnerPlugin
    methods (Access=protected)
        function reportFinalizedResult(plugin,pluginData)
            thisResult = pluginData.TestResult;
            if thisResult.Passed
                status = 'PASSED';
            elseif thisResult.Failed
                status = 'FAILED';
            elseif thisResult.Incomplete
                status = 'SKIPPED';
            end
            fprintf('%s: %s in %f seconds.\n',thisResult.Name, ...
                status,thisResult.Duration)
            reportFinalizedResult@ ...
                matlab.unittest.plugins.TestRunnerPlugin(plugin,pluginData)
        end
    end
end