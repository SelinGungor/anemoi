FROM python:3.6
RUN cd anemoi_blog
RUN pip install -r requirements.txt
#WORKDIR /anemoi_blog
RUN export FLASK_APP=anemoi
#RUN flask init-db
EXPOSE 8000
CMD ["flask", "run.py"]
