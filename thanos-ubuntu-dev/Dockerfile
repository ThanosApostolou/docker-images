FROM ubuntu:disco

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 \
	ANDROID_SDK_ROOT=/opt/android-sdk \
	PATH="${ANDROID_SDK_ROOT}/tools:${ANDROID_SDK_ROOT}/platform-tools:${PATH}"

RUN dpkg --add-architecture i386 && \
	apt-get update -yqq && apt-get full-upgrade -y && \
	apt-get install -y curl && \
	curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
	apt-get install -y --no-install-recommends \
		make \
		openjdk-8-jdk \
		nodejs \
		wine32-development wine-development \
		gradle \
		unzip && \
	update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java && \
	update-alternatives --set javac /usr/lib/jvm/java-8-openjdk-amd64/bin/javac && \
	mkdir -p $ANDROID_SDK_ROOT && cd $ANDROID_SDK_ROOT && \
	curl -o sdk-tools.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip && \
	unzip sdk-tools.zip && \
	rm sdk-tools.zip && \
	yes | $ANDROID_SDK_ROOT/tools/bin/sdkmanager --licenses && \
	yes | $ANDROID_SDK_ROOT/tools/bin/sdkmanager "platform-tools" "platforms;android-28" "build-tools;28.0.3" && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
