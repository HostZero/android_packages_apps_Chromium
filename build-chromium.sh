echo
echo Cleaning $OUT directory
rm -rf out
echo ==================
echo Building Chromium
echo ==================
echo
echo Starting Build...
mkdir ChromePublic
echo
echo Requesting Sudo Permission...
sudo cp -a . /ChromePublic/
rm -rf ChromePublic/tools/*
rm -rf ChromePublic/tools
mkdir out/target/product
echo Compiling....
java -jar apktool.jar b ChromePublic
mv ChromePublic/dist/ChromePublic.apk out/com.android.chromium_v1.0-minAPI19(arm,arm64-v8a,armeabi-v7a).apk
rm -rf ChromePublic
echo
echo ==============================
echo Build Success
echo $OUT= out/target/product/com.android.chromium_v1.0-minAPI19(arm,arm64-v8a,armeabi-v7a).apk
echo ===============================

