package com.my;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ContextListener implements ServletContextListener {
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("ContextListener#init");
    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
