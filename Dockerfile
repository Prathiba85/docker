#FROM image
#ADD /my/Test.java /a/b/bTest.java
#Run apt-get install java
#ENV JAVA_HOME=/some/path
#WORKDIR /a/b/s
#EXPOSE .8050
#.ENTRYPOINT-sleep-5

FROM alpine
Run apk add openjdk8
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/bin
WORKDIR /usr/share/udemy
ADD Test.java Test.java
ENTRYPOINT javac Test.java && java Test $NUMBER
