# Getting started

### Dependencies
Make sure u have installed and configured these dependencies 
- Mysql (I used xampp for this)
- OpenJDK ( at least version 17 )
- Apache maven 

### Configuration
Before u run application u need to create database so go to the `/src/main/resources/DataBase/` directory and run `FullSetup.sql` file in your mysql.
> if youre not running mysql on port 3306 go to the `/src/main/resources/application.properties` and change port in variable `spring.r2dbc.url` to yours

>if port 8080 is in use on your mashine go to the same directory and change variable `server.port` to any port u want
### Running
To run the application simply open the terminal in project directory and type 
>mvn spring-boot:run 

it should run without any errors

### Testing&Using
To use api u need to make graphql post requests to [this endpoint](http://localhost:8080/graphql)

Also u can test Api [there](http://localhost:8080/graphiql) this is the graphiql client built in api just for testing. I provided there some documentation and short descriptions of what this api provides to you