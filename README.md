# ARKAN

Cross-platform open source AR engine


## Installing

### macOS (Homebrew):

1. Install Xcode from AppStore

2. Install Xcode tools:
	```
	xcode-select --install
	sudo xcodebuild -license accept
	```

3. Install Bazel:
	```
	brew update
	brew install bazel
	```

4. Install Android Studio
	```
	brew install --cask android-studio
	```

5. Launch Android Studio and install Android SDK
	
	5.1. Be sure, you have installed **Android NDK r21.4.7075529** and **Android Build Tools v.30.0.0**

6. Be sure, you have exported the next environment variable in `~./zshrc`:
	```
	export ANDROID_HOME=$HOME/Library/Android/sdk
	export ANDROID_NDK_HOME=$ANDROID_HOME/ndk/21.4.7075529
	export PATH=$PATH:$ANDROID_HOME/emulator
	export PATH=$PATH:$ANDROID_HOME/tools
	export PATH=$PATH:$ANDROID_HOME/tools/bin
	export PATH=$PATH:$ANDROID_HOME/platform-tools
	```
7. Reload shell configuration:
	```
	source ~/.zshrc
	```


## Build

### Native C++ library:

```
bazel build lib/cpp:arkan 
```

### Android library:
```
bazel build --fat_apk_cpu=armeabi-v7a,x86 //lib/android:arkan_aar
```


## Licensing
Project is licensed under the GNU Affero General Public License, Version 3.0 (only). See [LICENSE](LICENSE.txt) for the full license text.
