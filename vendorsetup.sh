rm -rf frameworks/av
git clone https://github.com/crdroidandroid/android_frameworks_av.git -b 10.0 frameworks/av

echo "Patching for slow motion inside framework av..."

ROOTDIR="$PWD"
CURRENT_DIR="$ROOTDIR/device/xiaomi/phoenix"
cd $ROOTDIR/frameworks/av
git am $CURRENT_DIR/framework-av.patch
echo "Patching Done"
cd $ROOTDIR
echo "Patching for slow motion inside framework base..."
cd $ROOTDIR/frameworks/base
git am $CURRENT_DIR/slow-motion.patch
echo "Patching Done"
cd $ROOTDIR
