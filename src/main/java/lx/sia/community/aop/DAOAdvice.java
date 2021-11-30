package lx.sia.community.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StopWatch;

public class DAOAdvice {
	public Object aroundMethod(ProceedingJoinPoint pjp) {
		// 메서드 전
		StopWatch sw = new StopWatch();
		sw.start();
		
		try {
			Object result = pjp.proceed();
			return result;
		} catch (Throwable e) {
			e.printStackTrace();
		} finally {
			// 메서드 끝
			sw.stop();
			long time = sw.getTotalTimeMillis();
			
	 		String methodName = pjp.getSignature().getName();	// 메소드 이름 알아내기
			Logger logger = LoggerFactory.getLogger(this.getClass());
			
			logger.info("method : " +  methodName + ", time : " + time);
			
		}
		return null;
		
		
	}
}
