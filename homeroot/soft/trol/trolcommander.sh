#! /bin/sh

MUCOMMANDER_ARGS=""
JAVA_ARGS="\
	-Djava.system.class.loader=com.mucommander.commons.file.AbstractFileClassLoader \
	-Dawt.useSystemAAFontSettings=on \
	-Dswing.aatext=true \
	-Dsun.java2d.xrender=true \
	"
JAVA=/usr/bin/java

# Resolve the path to the mucommander.jar located in the same directory as this script
if [ -h $0 ]
then
    # This script has been invoked from a symlink, resolve the link's target (i.e. the path to this script)
    MUCOMMANDER_SH=`ls -l "$0"`
    MUCOMMANDER_SH=${MUCOMMANDER_SH#*-> }
else
    MUCOMMANDER_SH=$0
fi

CURRENT_DIR=`dirname "$MUCOMMANDER_SH"`
MUCOMMANDER_JAR=$CURRENT_DIR/trolcommander.jar
if [ ! -f $MUCOMMANDER_JAR ]
then
    echo "Error: cannot find file trolcommander.jar in directory $CURRENT_DIR"
    exit 1
fi

/usr/bin/java $JAVA_ARGS -Djavax.accessibility.assistive_technologies=" " -jar $MUCOMMANDER_JAR $MUCOMMANDER_ARGS $@

