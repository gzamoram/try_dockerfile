FROM python:3.10.8

COPY ./container_files/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN mkdir /code
COPY ./source/* /code/

ENTRYPOINT [ "./entrypoint.sh" ]
