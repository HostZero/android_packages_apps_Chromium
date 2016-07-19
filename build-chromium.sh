echo
CLONED_DIR= /home/hostzero/chromium
OUT_DIR= /home/hostzero/chromium/out
OUT= /home/hostzero/chromium/out/target/product/chromium
echo Cleaning $OUT directory
rm -rf out
echo ==================
echo Building Chromium
echo ==================
echo
echo Starting Build...
mkdir ext_build
echo
echo Requesting Sudo Permission...
sudo cp -a $CLONED_DIR/. /ext_build/
rm -rf $CLONED_DOR/tools/*
rm -rf $CLONED_DIR/tools
rm -rf $CLONED_DIR/build-chromium.sh
mkdir $OUT
echo Compiling....
java -jar apktool.jar b ext_build
mv $CLONED_DIR/dist/*.apk $OUT/Chromium.apk
rm -rf ext_build
echo
echo ==============================
echo Build Success
echo ===============================

