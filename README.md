# RunJar-Docker

docker build -t eureka --build-arg jar_name=SlaveTestServiceRegistry.jar .

docker container run --name eureka -e server_port=8761 -p 8761:8761 eureka
