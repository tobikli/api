FROM python:3.9

# Set the working directory inside the container
WORKDIR /code

# Copy the requirements.txt file and install dependencies
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy the application code into the container
COPY ./app /code/app


CMD ["fastapi", "run", "app/main.py", "--proxy-headers", "--port", "80"]
