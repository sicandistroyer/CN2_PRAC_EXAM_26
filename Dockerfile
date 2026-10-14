FROM python:3.15.0-alpine3.24
WORKDIR /app/
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["gunicorn", "-b", "0.0.0.0:5000","app:app"]