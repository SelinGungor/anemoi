FROM python:3.6
RUN git clone https://github.com/SelinGungor/anemoi.git
RUN cd anemoi/anemoi_blog
COPY requirements.txt /tmp
WORKDIR /tmp
RUN pip install -r requirements.txt
WORKDIR /anemoi/anemoi_blog
RUN export FLASK_APP=__init__.py
#RUN flask init-db
EXPOSE 8000
CMD ["flask", "run.py"]