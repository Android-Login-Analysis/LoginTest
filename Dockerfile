FROM ubuntu:22.04

# Install basic dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl wget git unzip python3 python3-pip openjdk-11-jdk maven \
    ca-certificates gnupg file \
    && rm -rf /var/lib/apt/lists/* && apt-get clean


# Install Node.js and npm
RUN mkdir -p /etc/apt/keyrings && \
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg && \
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_18.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list && \
    apt-get update && apt-get install -y --no-install-recommends nodejs && \
    rm -rf /var/lib/apt/lists/* && apt-get clean

# Install Appium
RUN npm install -g appium && appium driver install uiautomator2 && npm cache clean --force

# Install Python deps
RUN pip3 install --no-cache-dir frida-tools requests pyyaml

# Set Android SDK environment
ENV ANDROID_HOME=/opt/android-sdk
ENV ANDROID_SDK_ROOT=/opt/android-sdk
ENV PATH=/usr/local/bin:${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/emulator:${ANDROID_HOME}/platform-tools:${PATH}


# Install Android command line tools
RUN mkdir -p ${ANDROID_HOME}/cmdline-tools && cd ${ANDROID_HOME}/cmdline-tools && \
    wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip && \
    unzip commandlinetools-linux-9477386_latest.zip && mv cmdline-tools latest && rm commandlinetools-linux-9477386_latest.zip

# Accept SDK licenses and install necessary SDK packages (except platform-tools)
RUN mkdir -p ${ANDROID_HOME}/licenses && \
    echo "24333f8a63b6825ea9c5514f83c2829b004d1fee" > ${ANDROID_HOME}/licenses/android-sdk-license && \
    yes | sdkmanager --licenses && \
    sdkmanager --update && \
    sdkmanager \
        "build-tools;32.0.0" \
        "platforms;android-31"

RUN apt-get update && apt-get install -y android-sdk-platform-tools


# Set working directory
WORKDIR /app
COPY . .

EXPOSE 4723
ENTRYPOINT ["./docker-entrypoint.sh"]
