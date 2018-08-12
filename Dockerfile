FROM python:3.6
RUN mkdir anemoi
COPY ./ /anemoi
RUN pwd
RUN ls
WORKDIR /anemoi
RUN pip install -r requirements.txt
WORKDIR /anemoi/anemoi_blog
RUN export FLASK_APP=anemoi
#RUN flask init-db
EXPOSE 5000
CMD ["flask", "run.py"]