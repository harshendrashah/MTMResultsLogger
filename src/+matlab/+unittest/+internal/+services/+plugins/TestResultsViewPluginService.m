classdef TestResultsViewPluginService < matlab.buildtool.internal.services.ciplugins.CITestRunnerPluginService
    % Copyright 2025 The MathWorks, Inc.

    methods
        function plugins = providePlugins(~, ~)
            plugins = ciplugins.qualitycenter.TestResultsViewPlugin();
        end
    end
end