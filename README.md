# ARKANOID

Cross-platform open source AR engine


## Installing development environment

### macOS (Homebrew):

#### Native build:

1. Install Xcode from AppStore and Xcode tools in terminal:

   ```
   xcode-select --install
   sudo xcodebuild -license accept
   ```
2. Install VS Code:
   ```
   brew install --cask visual-studio-code
   ```
3. Install a recommended VS Code extension pack: **C/C++ Extension Pack** (ms-vscode.cpptools-extension-pack)

#### Cross-platform build:

Install LLVM by Homebrew:

```
brew install llvm
```

#### Android build:

1. Install Android Studio (for Android compilation; optional):
	```
	brew install --cask android-studio
	```

2. Launch Android Studio and install Android SDK (for Android compilation; optional):
	
	2.1. Be sure, you have installed **Android NDK r21.4.7075529** and **Android Build Tools v.30.0.0**

3. Be sure, you have exported the next environment variable in `~./zshrc` (for Android compilation; optional):
	```
	export ANDROID_HOME=$HOME/Library/Android/sdk
	export ANDROID_NDK_HOME=$ANDROID_HOME/ndk/21.4.7075529
	export PATH=$PATH:$ANDROID_HOME/emulator
	export PATH=$PATH:$ANDROID_HOME/tools
	export PATH=$PATH:$ANDROID_HOME/tools/bin
	export PATH=$PATH:$ANDROID_HOME/platform-tools
	```
4. Reload shell configuration:
	```
	source ~/.zshrc
	```


## Build

```
cmake -S . -B build
cmake --build build/
```

Or use a `build.sh` script for the cross-platform compilation:

```
./build.sh
```

To override default variables for `build.sh` create a `.env` file in the project root folder. There are available next options to configure:

- `A_BUILDDIR`: a build path (default: `./build`)
- `A_OUTDIR`: an output path (default: `$A_BUILDDIR/out`)
- `A_ANDROID_SDK`: Android SDK path (default: `$ANDROID_HOME`)
- `A_ANDROID_NDK`: Android NDK path (default: `$ANDROID_NDK_HOME`)
- `A_ANDROID_MIN_API_LEVEL`: A minimal Android API level (default: `29`)
- `A_THREADS`: Threads count (default: `4`)


## Licensing
Project is licensed under the GNU Affero General Public License, Version 3.0 (only). See [LICENSE](LICENSE.txt) for the full license text.
