FROM python:3.6
WORKDIR /anemoi_blog
RUN pip install -r requirements.txt
RUN export FLASK_APP=anemoi
#RUN flask init-db
EXPOSE 8000
CMD ["flask", "run.py"]
