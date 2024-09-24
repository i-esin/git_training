FROM python:3.11-slim-bullseye

# Install git and other necessary packages
RUN apt-get update && apt-get install -y git

# Set working directory
WORKDIR /app

# Clone the repository
RUN git clone https://github.com/i-esin/git_training.git .

# Install libraries
COPY requirements.txt .
RUN pip install -r requirements.txt

# Expose the port that Streamlit uses
EXPOSE 8501

# Run Streamlit when the container starts
CMD ["streamlit", "run", "app.py"]  # Replace 'your_streamlit_app.py' with your Streamlit script
