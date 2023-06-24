FROM python:3.9
WORKDIR /app
Run pip install --no-cache-dir -r file1.txt
COPY . .
CMD["python","demo.py"]
