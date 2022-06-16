FROM python:3.8

WORKDIR /workspace
ADD . /workspace

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" , "/workspace/app.py", "--server.address=0.0.0.0" ]

CMD []

RUN chown -R 42420:42420 /workspace

ENV HOME=/workspace
