package apiFeature;

import static org.junit.Assert.assertTrue;

import org.junit.Test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
 
//@RunWith(Karate.class)
//@KarateOptions(features="")
public class RunnerFile {
 
	@Test
    public void testParallel() {
        Results results = Runner.path("classpath:demo")
                .outputCucumberJson(true)
                .karateEnv("demo")
                .parallel(5);
        generateReport(results.getReportDir());
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }
	
}