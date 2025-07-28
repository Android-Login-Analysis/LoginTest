FROM ubuntu:22.04

# Install basic dependencies including audio and X11 libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl wget git unzip python3 python3-pip openjdk-11-jdk maven \
    ca-certificates gnupg qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils \
    pulseaudio libpulse0 libpulse-dev \
    libx11-6 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 \
    libxi6 libxrandr2 libxrender1 libxss1 libxtst6 \
    && rm -rf /var/lib/apt/lists/* && apt-get clean

# Install Node.js and npm
RUN mkdir -p /etc/apt/keyrings && \
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg && \
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_18.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list && \
    apt-get update && apt-get install -y --no-install-recommends nodejs && \
    rm -rf /var/lib/apt/lists/* && apt-get clean

# Install Python and pip
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip3 install frida-tools

# Set Android SDK environment
ENV ANDROID_HOME=/opt/android-sdk
ENV ANDROID_SDK_ROOT=/opt/android-sdk
ENV PATH=${PATH}:${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/emulator

# Install Android command line tools (fix directory structure)
RUN mkdir -p ${ANDROID_HOME}/cmdline-tools && \
    cd ${ANDROID_HOME}/cmdline-tools && \
    wget https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip && \
    unzip commandlinetools-linux-8512546_latest.zip && \
    mkdir latest && \
    mv cmdline-tools/* latest/ && \
    rmdir cmdline-tools && \
    rm commandlinetools-linux-8512546_latest.zip

# Verify sdkmanager is available
RUN ls -l ${ANDROID_HOME}/cmdline-tools/latest/bin && \
    ${ANDROID_HOME}/cmdline-tools/latest/bin/sdkmanager --version

# Accept SDK licenses and setup
RUN mkdir -p ${ANDROID_HOME}/licenses && \
    echo "24333f8a63b6825ea9c5514f83c2829b004d1fee" > ${ANDROID_HOME}/licenses/android-sdk-license && \
    echo "84831b9409646a918e30573bab4c9c91346d8abd" > ${ANDROID_HOME}/licenses/android-sdk-preview-license && \
    mkdir -p ~/.android && touch ~/.android/repositories.cfg

# Download platform-tools directly
RUN cd ${ANDROID_HOME} && \
    wget https://dl.google.com/android/repository/platform-tools_r34.0.5-linux.zip && \
    unzip platform-tools_r34.0.5-linux.zip && \
    rm platform-tools_r34.0.5-linux.zip

# Download emulator directly
RUN cd ${ANDROID_HOME} && \
    wget https://dl.google.com/android/repository/emulator-linux_x64-10511200.zip && \
    unzip emulator-linux_x64-10511200.zip && \
    rm emulator-linux_x64-10511200.zip

# Create package.xml metadata for emulator
RUN mkdir -p ${ANDROID_HOME}/emulator && \
    echo '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>' > ${ANDROID_HOME}/emulator/package.xml && \
    echo '<ns2:repository xmlns:ns2="http://schemas.android.com/repository/android/common/01" xmlns:ns3="http://schemas.android.com/repository/android/generic/01">' >> ${ANDROID_HOME}/emulator/package.xml && \
    echo '  <localPackage path="emulator">' >> ${ANDROID_HOME}/emulator/package.xml && \
    echo '    <type-details xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ns3:genericDetailsType"/>' >> ${ANDROID_HOME}/emulator/package.xml && \
    echo '    <revision>' >> ${ANDROID_HOME}/emulator/package.xml && \
    echo '      <major>32</major>' >> ${ANDROID_HOME}/emulator/package.xml && \
    echo '      <minor>1</minor>' >> ${ANDROID_HOME}/emulator/package.xml && \
    echo '      <micro>15</micro>' >> ${ANDROID_HOME}/emulator/package.xml && \
    echo '    </revision>' >> ${ANDROID_HOME}/emulator/package.xml && \
    echo '    <display-name>Android Emulator</display-name>' >> ${ANDROID_HOME}/emulator/package.xml && \
    echo '  </localPackage>' >> ${ANDROID_HOME}/emulator/package.xml && \
    echo '</ns2:repository>' >> ${ANDROID_HOME}/emulator/package.xml

# Download build-tools directly
RUN mkdir -p ${ANDROID_HOME}/build-tools && cd ${ANDROID_HOME}/build-tools && \
    wget https://dl.google.com/android/repository/build-tools_r32-linux.zip && \
    unzip build-tools_r32-linux.zip -d 32.0.0 && \
    rm build-tools_r32-linux.zip

# Create package.xml metadata for build-tools (FIXED format)
RUN echo '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>' > ${ANDROID_HOME}/build-tools/32.0.0/package.xml && \
    echo '<ns2:repository xmlns:ns2="http://schemas.android.com/repository/android/common/01" xmlns:ns3="http://schemas.android.com/sdk/android/repo/addon2/03">' >> ${ANDROID_HOME}/build-tools/32.0.0/package.xml && \
    echo '  <localPackage path="build-tools;32.0.0">' >> ${ANDROID_HOME}/build-tools/32.0.0/package.xml && \
    echo '    <type-details xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ns3:addonDetailsType"/>' >> ${ANDROID_HOME}/build-tools/32.0.0/package.xml && \
    echo '    <revision>' >> ${ANDROID_HOME}/build-tools/32.0.0/package.xml && \
    echo '      <major>32</major>' >> ${ANDROID_HOME}/build-tools/32.0.0/package.xml && \
    echo '      <minor>0</minor>' >> ${ANDROID_HOME}/build-tools/32.0.0/package.xml && \
    echo '      <micro>0</micro>' >> ${ANDROID_HOME}/build-tools/32.0.0/package.xml && \
    echo '    </revision>' >> ${ANDROID_HOME}/build-tools/32.0.0/package.xml && \
    echo '    <display-name>Android SDK Build-Tools 32</display-name>' >> ${ANDROID_HOME}/build-tools/32.0.0/package.xml && \
    echo '  </localPackage>' >> ${ANDROID_HOME}/build-tools/32.0.0/package.xml && \
    echo '</ns2:repository>' >> ${ANDROID_HOME}/build-tools/32.0.0/package.xml

# Download platforms directly
RUN mkdir -p ${ANDROID_HOME}/platforms && cd ${ANDROID_HOME}/platforms && \
    wget https://dl.google.com/android/repository/platform-31_r01.zip && \
    unzip platform-31_r01.zip && \
    mv android-12 android-31 && \
    rm platform-31_r01.zip

# Create package.xml metadata for platforms
RUN echo '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>' > ${ANDROID_HOME}/platforms/android-31/package.xml && \
    echo '<ns2:repository xmlns:ns2="http://schemas.android.com/repository/android/common/01" xmlns:ns3="http://schemas.android.com/sdk/android/repo/repository2/03">' >> ${ANDROID_HOME}/platforms/android-31/package.xml && \
    echo '  <localPackage path="platforms;android-31">' >> ${ANDROID_HOME}/platforms/android-31/package.xml && \
    echo '    <type-details xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ns3:platformDetailsType">' >> ${ANDROID_HOME}/platforms/android-31/package.xml && \
    echo '      <api-level>31</api-level>' >> ${ANDROID_HOME}/platforms/android-31/package.xml && \
    echo '    </type-details>' >> ${ANDROID_HOME}/platforms/android-31/package.xml && \
    echo '    <revision>' >> ${ANDROID_HOME}/platforms/android-31/package.xml && \
    echo '      <major>1</major>' >> ${ANDROID_HOME}/platforms/android-31/package.xml && \
    echo '    </revision>' >> ${ANDROID_HOME}/platforms/android-31/package.xml && \
    echo '    <display-name>Android SDK Platform 31</display-name>' >> ${ANDROID_HOME}/platforms/android-31/package.xml && \
    echo '  </localPackage>' >> ${ANDROID_HOME}/platforms/android-31/package.xml && \
    echo '</ns2:repository>' >> ${ANDROID_HOME}/platforms/android-31/package.xml

# Download system-images directly
RUN mkdir -p ${ANDROID_HOME}/system-images/android-31 && cd ${ANDROID_HOME}/system-images/android-31 && \
    wget https://dl.google.com/android/repository/sys-img/google_apis/x86_64-31_r13.zip && \
    unzip x86_64-31_r13.zip -d google_apis && \
    rm x86_64-31_r13.zip

# Create package.xml metadata for system-images
RUN echo '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>' > ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '<ns2:repository xmlns:ns2="http://schemas.android.com/repository/android/common/01" xmlns:ns3="http://schemas.android.com/sdk/android/repo/sys-img2/03">' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '  <localPackage path="system-images;android-31;google_apis;x86_64">' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '    <type-details xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ns3:sysImgDetailsType">' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '      <api-level>31</api-level>' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '      <tag>' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '        <id>google_apis</id>' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '        <display>Google APIs</display>' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '      </tag>' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '      <abi>x86_64</abi>' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '    </type-details>' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '    <revision>' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '      <major>13</major>' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '    </revision>' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '    <display-name>Google APIs Intel x86 Atom_64 System Image</display-name>' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '  </localPackage>' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml && \
    echo '</ns2:repository>' >> ${ANDROID_HOME}/system-images/android-31/google_apis/x86_64/package.xml

# Set working directory
WORKDIR /app
COPY . .

# Make Python scripts executable
RUN chmod +x scripts/*.sh scripts/*.py resources/frida-server

# Create necessary directories
RUN mkdir -p logs reports

# Create AVD using avdmanager (with standard device) - moved after copying files
RUN echo "no" | ${ANDROID_HOME}/cmdline-tools/latest/bin/avdmanager create avd \
    --name "test_device" \
    --package "system-images;android-31;google_apis;x86_64" \
    --abi "x86_64"

# Verify AVD was created
RUN ls -la ~/.android/avd/ && \
    ${ANDROID_HOME}/cmdline-tools/latest/bin/avdmanager list avd

# Add permission fix script execution to startup
RUN echo '#!/bin/bash' > /entrypoint.sh && \
    echo 'set -e' >> /entrypoint.sh && \
    echo 'echo "Running permission fixes..."' >> /entrypoint.sh && \
    echo 'chmod +x scripts/fix-permissions.sh' >> /entrypoint.sh && \
    echo 'scripts/fix-permissions.sh || true' >> /entrypoint.sh && \
    echo 'echo "Starting main application..."' >> /entrypoint.sh && \
    echo 'exec ./scripts/docker-startup.sh "$@"' >> /entrypoint.sh && \
    chmod +x /entrypoint.sh

EXPOSE 5555 5554
ENTRYPOINT ["/entrypoint.sh"] 