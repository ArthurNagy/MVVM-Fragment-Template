#!/bin/sh

echo "Installing MVVM Fragment Group File template..."

TEMPLATES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/"

LOCAL_STUDIO_PATHS=/usr/local/android-studio*/plugins/android/lib/templates/other
GLOBAL_STUDIO_PATHS=/opt/android-studio*/plugins/android/lib/templates/other

for i in ${LOCAL_STUDIO_PATHS} ${GLOBAL_STUDIO_PATHS}
do
    if [[ -d ${i} ]]; then

    # Install MVVM Fragment template
    cp -R "${TEMPLATES}/MVVMFragment"/ "${i}/"

    fi
done

echo "Done."
echo ""
echo "Restart AndroidStudio in order to use it."