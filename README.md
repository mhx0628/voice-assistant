# Android APP 项目源码

这是一个用于生成 Android APP 的子项目。
由于本项目的核心逻辑（语音处理、AI对话）依赖于 Python 后端运行，因此该 APP 的本质是一个连接到您电脑端的“客户端外壳”。

## ⚠️ 重要说明

1. **必须运行服务端**：您的电脑必须运行 `main.py`，且电脑和手机必须连接到**同一个 Wi-Fi 网络**。
2. **需要自行编译**：由于环境限制，我为您生成了 APP 的**源代码**。您需要使用 Android Studio 或命令行工具将其编译为 `.apk` 安装包。

## 🚀 如何编译 APK (安装包)

### 方法一：使用 Android Studio (推荐)
1. 确保您已安装 **Android Studio**。
2. 打开 Android Studio，选择 "Open an existing Android Studio project"。
3. 导航到本目录下的 `android` 文件夹 (`e:\go\voice\android_app\android`) 并打开。
4. 等待 Gradle 同步完成。
5. 点击菜单栏的 `Build` -> `Build Bundle(s) / APK(s)` -> `Build APK(s)`。
6. 编译完成后，会在 `android/app/build/outputs/apk/debug/` 下生成 `app-debug.apk`。
7. 将该文件发送到手机安装即可。

### 方法二：使用命令行 (如果你有 Android SDK 环境)
在 `android_app` 目录下打开终端，运行：
```powershell
npx cap open android
# 或者直接进入 android 目录运行 gradle
cd android
./gradlew assembleDebug
```

## 📱 APP 使用说明

1. **无需配置**：APP 已内置连接到服务器 `https://115.190.19.212`。
2. **安装即用**：安装并打开 APP 后，它会自动跳转到语音助手界面。
3. **权限**：请授予麦克风和摄像头权限以进行语音和视频通话。

## 💡 替代方案 (无需编译)

如果您不想编译 APP，可以直接在手机浏览器 (Chrome/Edge/Safari) 中访问：

**https://115.190.19.212**

然后点击浏览器菜单中的 **"添加到主屏幕"**，即可获得类似 APP 的全屏体验。
