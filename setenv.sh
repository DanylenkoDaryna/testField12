

#######################################################
# YOU HAVE TO SET THE JAVA_HOME
#######################################################

# must point to jre/jdk home
JAVA_HOME=/usr/java/jdk1.8.0_151


#######################################################
# DON'T TOUCH THE LINES BELOW
#######################################################

if [ ! -e "$JAVA_HOME" ]; then
	echo "[setenv.sh] The JAVA_HOME variable is not defined correctly."
	exit 
fi

PATH="$JAVA_HOME/bin:$PATH"
CATALINA_HOME=$PWD/tomcat
CATALINA=$CATALINA_HOME/bin/catalina.sh

