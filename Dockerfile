# FROM ubuntu:22.04

# RUN apt-get update && apt-get install -y g++

# WORKDIR /app

# COPY main.cpp .

# # Print file to verify
# RUN echo "=== CONTENT OF main.cpp ===" && cat main.cpp

# RUN g++ main.cpp -o myapp

# CMD ["./myapp"]
# FROM ubuntu:22.04

# RUN apt-get update && apt-get install -y g++

# WORKDIR /app

# COPY main.cpp .

# RUN g++ main.cpp -o myapp

# # CMD ["./myapp"]
# FROM python:3.11-slim

# WORKDIR /app

# # لو عندك مكاتب في requirements.txt
# # COPY requirements.txt ./
# # RUN pip install --no-cache-dir -r requirements.txt || true

# # نسخ ملف البايثون
# COPY app.py .

# # أمر التشغيل
# CMD ["python", "app.py"]

# استخدم صورة أساسية
FROM python:3.12-slim

# اعمل مجلد للتطبيق داخل الـ container
WORKDIR /app

# انسخ ملفات المشروع للـ container
COPY app.py .

# ثبّت المتطلبات (لو في ملف requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# افتح البورت اللي هيشتغل عليه التطبيق
EXPOSE 8000

# الأمر اللي هيشتغل لما يبدأ الـ container
CMD ["python", "app.py"]




