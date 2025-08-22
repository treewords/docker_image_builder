# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set environment variables
ENV BINGX_URL="wss://open-api-swap.bingx.com/swap-market"
ENV BINGX_SYMBOL="BTC-USDT"
ENV BINGX_TIMEFRAME="1m"

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application's code into the container at /app
COPY main.py .

# Run main.py when the container launches
CMD ["python", "main.py"]
