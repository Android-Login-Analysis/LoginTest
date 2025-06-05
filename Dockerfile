FROM --platform=linux/arm64 ubuntu:22.04

# Install basic dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    wget \
    git \
    unzip \
    python3 \
    python3-pip \
    openjdk-11-jdk \
    maven \
    ca-certificates \
    gnupg \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

# Install Node.js and npm
RUN mkdir -p /etc/apt/keyrings \
    && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg \
    && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_18.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends nodejs \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean

# Install Appium and its dependencies
RUN npm install -g appium \
    && appium driver install uiautomator2 \
    && npm cache clean --force

# Install Python dependencies
RUN pip3 install --no-cache-dir frida-tools

# Install Android SDK tools
ENV ANDROID_HOME=/opt/android-sdk
ENV ANDROID_SDK_ROOT=/opt/android-sdk
ENV PATH=${PATH}:${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/platform-tools

# Download and install Android SDK command line tools
RUN mkdir -p ${ANDROID_HOME}/cmdline-tools \
    && cd ${ANDROID_HOME}/cmdline-tools \
    && wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip \
    && unzip commandlinetools-linux-9477386_latest.zip \
    && mv cmdline-tools latest \
    && rm commandlinetools-linux-9477386_latest.zip

# Accept licenses and install Android SDK components
RUN mkdir -p ${ANDROID_HOME}/licenses \
    && echo "24333f8a63b6825ea9c5514f83c2829b004d1fee" > ${ANDROID_HOME}/licenses/android-sdk-license \
    && echo "84831b9409646a918e30573bab4c9c91346d8abd" > ${ANDROID_HOME}/licenses/android-sdk-preview-license \
    && yes | sdkmanager --licenses \
    && sdkmanager --update \
    && sdkmanager "platform-tools" \
    && sdkmanager "build-tools;33.0.0"

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Expose ports
EXPOSE 4723 5555

# Set entrypoint
ENTRYPOINT ["./docker-entrypoint.sh"] 