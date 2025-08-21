FROM mcr.microsoft.com/devcontainers/universal:2

# Install Python and Flask
RUN pip install flask

# Install Node.js and Vue CLI
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g @vue/cli

# Set working directory
WORKDIR /workspace

# Expose default ports (Flask: 5000, Vue: 5173 or 8080)
EXPOSE 5000 5173 8080