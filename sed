## sed find a pattern and add a line before or after that pattern
# before a line
sed -i '/pattern/i \
line1 \
line2' inputfile

# after a line
sed -i '/pattern/a \
line1 \
line2' inputfile

e.g. 
add following line
docBase="/opt/tomcat/static" path="/static" />
after following pattern
<Valve className="org.apache.catalina.valves.AccessLogValve"
in /opt/tomcat/conf/server.xml

# test ro
cat server.xml | sed '/<Valve className="org.apache.catalina.valves.AccessLogValve"/i \\n\t<Context docBase="/opt/tomcat/static" path="/static" />\n'

# execute
sed -i '/<Valve className="org.apache.catalina.valves.AccessLogValve"/i \\n\t<Context docBase="/opt/tomcat/static" path="/static" />\n' server.xml 

## sed find a pattern and modify the line after pattern
e.g. 
find <param-name>listings<\/param-name> in "default servelet" config of tomcat and modigy the line folling it. i.e
<param-value>false<\/param-value>
to
<param-value>true<\/param-value>
in 
/opt/tomcat/conf/web.xml

# test ro
cat web.xml | sed '/<param-name>listings<\/param-name>/!b;n;c\\t\t<param-value>true<\/param-value>' | grep -A1 listings
 
# execute
sed -i '/<param-name>listings<\/param-name>/!b;n;c\\t\t<param-value>true<\/param-value>' web.xml | grep -A1 listings
