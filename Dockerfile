# Base Image
FROM python:3.9-slim

# Workspace
WORKDIR /code

# Installing Tools
RUN pip install flask redis

# Add my Files
COPY app.py .

# Launch
CMD [ "flask", "run", "--host=0.0.0.0" ]
