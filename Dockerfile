FROM ubuntu:22.04

# Install g++
RUN apt-get update && apt-get install -y g++

# Copy C++ file
COPY main.cpp /app/main.cpp

WORKDIR /app

# Compile
RUN g++ main.cpp -o myapp

# Run
CMD ["./myapp"]
