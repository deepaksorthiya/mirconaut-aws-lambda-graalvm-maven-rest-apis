FROM public.ecr.aws/amazonlinux/amazonlinux:2023-minimal
WORKDIR /function
RUN dnf install -y zip
COPY func ./
COPY bootstrap ./
RUN chmod 777 bootstrap
RUN chmod 777 func
RUN zip -j function.zip bootstrap func
ENTRYPOINT ["/function/func"]
EXPOSE 8080