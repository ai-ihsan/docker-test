# Use a smaller base image for the build stage
FROM python:3-slim as build

# Install the necessary build dependencies
RUN apt-get update && apt-get install -y build-essential

# Copy the application code and set working directory
COPY . /app
WORKDIR /app

# Use a smaller base image for the final image
FROM python:3-slim

# Copy the built application from the build stage
COPY --from=build /app /app
RUN pip install flask

# Expose the application port
EXPOSE 80

# Run the application
CMD ["python", "/app/app.py"]
