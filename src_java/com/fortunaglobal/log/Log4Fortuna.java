package com.fortunaglobal.log;

import org.apache.log4j.Logger;
//import org.apache.log4j.xml.DOMConfigurator;

public class Log4Fortuna{
	private static Logger log = Logger.getLogger(Log4Fortuna.class);

	public static void main(String args[]) {
		//DOMConfigurator.configure("WEB-INF\\log4j.xml");
		log.info("Test Log by  chand");
	}
}
