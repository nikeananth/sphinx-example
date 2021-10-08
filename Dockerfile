FROM python:3.7-slim AS build
ADD . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r ./requirements.txt

FROM gcr.io/distroless/python3
COPY --from=build /app /app
COPY --from=build /usr/local/lib/python3.7/site-packages /usr/local/lib/python3.5/site-packages
WORKDIR /app
ENV PYTHONPATH=/usr/local/lib/python3.5/site-packages
EXPOSE 5000
ENTRYPOINT ["python", "run_gunicorn.py","--bind=0.0.0.0:5000","--workers=1","--pythonpath=app", "main:app","--timeout","300"]


