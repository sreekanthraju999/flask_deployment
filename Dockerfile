FROM python:3.9.7

# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt file to the working directory
COPY requirements.txt .

# Install the required Python packages
RUN pip install -r requirements.txt

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 5000 for the Flask application
EXPOSE 5000

# Run the Flask application when the container is started
CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0"]
