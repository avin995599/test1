FROM jeffreyzutt/zuttlab-aws-cli
WORKDIR /home/ec2-user
RUN yum update -y
RUN amazon-linux-extras install java-openjdk11
RUN yum install wget -y
RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
RUN yum install jenkins -y
EXPOSE 8080
RUN java -version
RUN jenkins --version
CMD service jenkins start
CMD service jenkins status
RUN echo " jenkins installation setup completed...."
