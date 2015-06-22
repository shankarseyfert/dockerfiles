To use, create a Dockerfile for your application container.

Copy your application JAR files into the working directory.

    COPY target/my-api*.jar my-api.jar

Set your entrypoint to execute the JAR. i.e.:

    ENTRYPOINT ["java", "-jar", "my-api.jar", "--server.port=8080"]

