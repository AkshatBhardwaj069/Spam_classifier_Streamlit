FROM python:3.8

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY classifier.py .

EXPOSE 8501

CMD ["streamlit", "run", "classifier.py", "--server.port=8501", "--server.address=0.0.0.0"]