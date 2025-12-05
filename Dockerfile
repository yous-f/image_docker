# FROM ubuntu:22.04

# RUN apt-get update && apt-get install -y g++

# WORKDIR /app

# COPY main.cpp .

# # Print file to verify
# RUN echo "=== CONTENT OF main.cpp ===" && cat main.cpp

# RUN g++ main.cpp -o myapp

# CMD ["./myapp"]
FROM ubuntu:22.04

RUN apt-get update && apt-get install -y g++

WORKDIR /app

COPY main.cpp .

RUN g++ main.cpp -o myapp

CMD ["./myapp"]


