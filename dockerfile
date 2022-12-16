# Use a smaller base image for the build stage
FROM python:3-slim as build

# Install the necessary build dependencies
RUN apt-get update && apt-get install -y build-essential

# Copy the application code and install the dependencies
COPY . /app
WORKDIR /app
RUN pip install -r /app/requirements.txt

# Use a smaller base image for the final image
FROM python:3-slim

# Copy the built application from the build stage
COPY --from=build /app /app

# Expose the application port
EXPOSE 80

# Run the application
CMD ["python", "/app/app.py"]
