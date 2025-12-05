# # FROM alpine  
# # WORKDIR /app
# # RUN apk add --no-cache g++
# # COPY main.cpp .
# # RUN g++ main.cpp -o app
# # CMD ["./app"]
# # Use Alpine Linux as a lightweight base
# FROM alpine:latest

# # Set working directory inside container
# WORKDIR /app

# # Install g++ compiler and standard build tools
# RUN apk add --no-cache g++

# # Copy C++ source code to container
# COPY main.cpp .

# # Compile the C++ program
# RUN g++ main.cpp -o app

# # Run the compiled program by default
# CMD ["./app"]
# استخدم صورة Python الرسمية
# FROM python:3.12-alpine

# # حدد مجلد العمل داخل الكونتينر
# WORKDIR /app

# # انسخ الملف
# COPY app.py .

# # شغل البرنامج
# CMD ["python", "app.py"]
# استخدم صورة تعتمد على Ubuntu
# FROM ubuntu:20.04
FROM alpine:latest

# Install g++
RUN apk update && apk add --no-cache g++

# Copy project files
COPY main.cpp .

# Compile
RUN g++ main.cpp -o myapp

# Run
CMD ["./myapp"]
