# Dockerfile, Image, Container
FROM python:alpine

EXPOSE 8000

# Install gunicorn & falcon
RUN pip install gunicorn falcon

COPY . . 
WORKDIR . 


CMD ["gunicorn", "-b", "0.0.0.0:8000", "app.main"]