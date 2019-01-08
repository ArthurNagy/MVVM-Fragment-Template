#!/bin/sh

echo "Installing MVVM Fragment Group File template..."

TEMPLATES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/"

TEMPLATES_SUFFIX="plugins/android/lib/templates/other"

for i in /usr/local/android-studio*/ \
         /opt/android-studio*/ \
         /Applications/Android*/Contents/

# for i in $HOME/Library/Preferences/AndroidStudio* \
#          $HOME/.AndroidStudio*/config
do
    if [[ -d ${i} ]]; then
    
    # Install MVVM Fragment template
    mkdir -p $i/TEMPLATES_SUFFIX/templates/MVVMFragment
    cp -frv "$TEMPLATES/MVVMFragment"/* $i/TEMPLATES_SUFFIX/templates/MVVMFragment

    fi
done

echo "Done."
echo ""
echo "Restart AndroidStudio in order to use it."