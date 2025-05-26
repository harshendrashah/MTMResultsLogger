import matlab.unittest.TestSuite
import matlab.unittest.TestRunner

addpath('src')
suite = TestSuite.fromFolder("tests");
runner = TestRunner.withNoPlugins;
runner.addPlugin(ciplugins.qualitycenter.TestResultsViewPlugin);
result = runner.run(suite);
rmpath('src')