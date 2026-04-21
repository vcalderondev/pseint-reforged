#!/bin/bash
# create_bundle_native.sh

APP_NAME="PSeInt.app"
DIST_DIR="dist_native"

rm -rf $DIST_DIR/$APP_NAME
mkdir -p $DIST_DIR/$APP_NAME/Contents/MacOS
mkdir -p $DIST_DIR/$APP_NAME/Contents/Resources/Fonts

# Copy main binary to MacOS
cp bin/wxPSeInt $DIST_DIR/$APP_NAME/Contents/MacOS/pseint

# Copy helper binaries to Resources
cp bin/pseint bin/pseval bin/psexport bin/psterm bin/psdraw3 bin/psdrawE $DIST_DIR/$APP_NAME/Contents/Resources/

# Copy other resources
cp -r bin/help bin/imgs bin/perfiles bin/ejemplos bin/pseint.dir $DIST_DIR/$APP_NAME/Contents/Resources/
cp bin/*.ttf $DIST_DIR/$APP_NAME/Contents/Resources/Fonts/
cp bin/creator.psz $DIST_DIR/$APP_NAME/Contents/Resources/

# Copy Info.plist and Icon
cp dist/Info.plist $DIST_DIR/$APP_NAME/Contents/
if [ -f bin/imgs/icon.icns ]; then
    cp bin/imgs/icon.icns $DIST_DIR/$APP_NAME/Contents/Resources/pseint.icns
fi

echo "Bundle created at $DIST_DIR/$APP_NAME"
