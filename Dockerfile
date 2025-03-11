FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY  flask_app/ /app/

COPY  models/vectorizer.pkl /app/models/vectorizer.pkl

# Install any needed packages specified in requirements.txt
RUN pip install  -r requirements.txt

RUN  python -m nltk.downloader stopwords wordnet

# Make port 80 available to the world outside this container
EXPOSE 5000

# Define environment variable
CMD [ "python", "app.py" ]

