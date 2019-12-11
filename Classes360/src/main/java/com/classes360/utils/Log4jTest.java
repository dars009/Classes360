package com.classes360.utils;

import org.apache.log4j.Logger;

public class Log4jTest {

	private static final Logger logger = Logger.getLogger(Log4jTest.class);

	public void logTest() {
		logger.info(" info Log4jTest");
		logger.error(" error Log4jTest");
		logger.warn(" warn Log4jTest");
		logger.fatal(" fatal Log4jTest");
		logger.debug(" debug Log4jTest");
	}
	
	public static void main(String[] args) {
		Log4jTest l=new Log4jTest();
		l.logTest();
	}
}
