FROM python:3.6.15-slim-buster

WORKDIR /app

COPY requirements.txt /app/

ENV PATH="/opt/env/bin:$PATH"

RUN python3.6 -m venv /opt/env 

RUN /opt/env/bin/pip install --upgrade pip

RUN /opt/env/bin/pip install -r requirements.txt

RUN  /opt/env/bin/pip install jupyter ipykernel


EXPOSE 8888


CMD ["/opt/env/bin/jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]