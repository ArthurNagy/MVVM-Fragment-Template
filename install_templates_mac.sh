#!/bin/sh

echo "Installing MVVM Fragment Group File template..."

TEMPLATES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/"

for i in $HOME/Library/Preferences/AndroidStudio* \
         $HOME/.AndroidStudio*
do
    if [[ -d ${i} ]]; then
    
    # Check if templates directory exists, if not, create it
    TARGET_TEMPLATE = "${i}/templates/other"
    if [[ -d ${TARGET_TEMPLATE} ]]; then
        mkdir TARGET_TEMPLATE
    fi

    # Install MVVM Fragment template
    mkdir "${TARGET_TEMPLATE}/MVVMFragment"
    cp -R "${TEMPLATES}/MVVMFragment"/ "${TARGET_TEMPLATE}/MVVMFragment"

    fi
done

echo "Done."
echo ""
echo "Restart AndroidStudio in order to use it."