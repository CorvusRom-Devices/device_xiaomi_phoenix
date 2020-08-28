rm -rf frameworks/av
git clone https://gitlab.com/rakeshraimca/framework_av frameworks/av

echo "Patching for slow motion insideframework base..."

ROOTDIR="$PWD"
CURRENT_DIR="$ROOTDIR/device/xiaomi/phoenix"
cd $ROOTDIR/frameworks/base
git am $CURRENT_DIR/slow-motion.patch
echo "Patching Done"
cd $ROOTDIR
