FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy files into container
COPY . .

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Install Jupyter Notebook
RUN pip install notebook

# Expose the port Jupyter uses
EXPOSE 8888

# Start Jupyter Notebook server
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
