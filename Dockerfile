# Use a minimal base image
FROM alpine

# Install Python and necessary packages
RUN apk add --no-cache python3

# Set the working directory inside the container
WORKDIR /home

# Copy the Python script into the container
COPY code.py /home/

# Copy the text files into the container
COPY IF.txt Limerick-1.txt /home/data/

# Create the output directory
RUN mkdir -p /home/output

# Run the Python script when the container starts
CMD ["python3", "code.py"]
