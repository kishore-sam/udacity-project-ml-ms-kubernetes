FROM python:3.7.3-stretch

## Complete Step 1:
WORKDIR /app

## Complete Step 2:
COPY . app.py /app/

## Complete Step 3:
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

## Complete Step 4:
EXPOSE 80

## Complete Step 5:
CMD ["python", "app.py"]
