import matlab.unittest.TestSuite
import matlab.unittest.TestRunner

suite = TestSuite.fromFolder("tests");
runner = TestRunner.withNoPlugins;
runner.addPlugin(ciplugins.qualitycenter.TestResultsViewPlugin);
result = runner.run(suite);