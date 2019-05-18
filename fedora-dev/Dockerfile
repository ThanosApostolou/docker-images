FROM fedora:29

ENV JAVA_HOME=/usr/lib/jvm/java \
	ANDROID_SDK_ROOT=/opt/android-sdk \
	PATH="${ANDROID_SDK_ROOT}/tools:${ANDROID_SDK_ROOT}/platform-tools:${PATH}"

RUN dnf install --setopt=install_weak_deps=False --refresh --best -y curl && \
	curl -sL https://rpm.nodesource.com/setup_12.x | bash - && \
	dnf install --setopt=install_weak_deps=False --best -y \
		make \
		java-1.8.0-openjdk-devel \
		nodejs \
		wine.i686 \
		gradle \
		unzip && \
	mkdir -p $ANDROID_SDK_ROOT && cd $ANDROID_SDK_ROOT && \
	curl -o sdk-tools.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip && \
	unzip sdk-tools.zip && \
	rm sdk-tools.zip && \
	yes | $ANDROID_SDK_ROOT/tools/bin/sdkmanager --licenses && \
	yes | $ANDROID_SDK_ROOT/tools/bin/sdkmanager "platform-tools" "platforms;android-28" "build-tools;28.0.3" && \
	dnf clean all -y
