FROM python:3.6
RUN pip install -r requirements.txt
RUN cd anemoi_blog
#WORKDIR /anemoi_blog
RUN export FLASK_APP=anemoi
#RUN flask init-db
EXPOSE 8000
CMD ["flask", "run.py"]
