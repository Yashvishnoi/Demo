FROM python:3.9
Run pip install --no-cache-dir -r file1.txt
COPY demo.py .
CMD["python","demo.py"]
