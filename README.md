# espacepublic-demo-site-dansmarue
DansMaRue Back office docker demo site

# Back office site Lutece DansMaRue.
This site is a demo to manage the reports sent by mobile application DansMaRue.

# Build the image and run the container.
docker-compose up

# Launch the server
docker exec -it dmr /start_tomcat.sh

# Connect to Back office
http://localhost:8080/site-dmr-demo/jsp/admin/AdminLogin.jsp

Login : admin
Password : adminadmin
