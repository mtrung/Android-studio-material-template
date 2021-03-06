#!/bin/sh
# Created by Trung Vo
# Simple install script

# old way
#Android_Studio_installation_dir="/Applications/Android Studio.app/Contents"
#dest_dir=${Android_Studio_installation_dir}/plugins/android/lib/templates/activities/

template_name=MaterialNavigationDrawerActivity

echo Android SDK=$ANDROID_HOME
if [ -z "$ANDROID_HOME" ]; then
    ANDROID_HOME=~/Library/Android/sdk
    echo "ANDROID_HOME is empty -> set to $ANDROID_HOME"
fi

dest_dir=$ANDROID_HOME/extras/templates/activities
if [ ! -d "$dest_dir" ]; then
    echo "$dest_dir does not exist -> create"
    mkdir -p "$dest_dir"
fi

cp -R $template_name "$dest_dir"/$template_name
ls "$dest_dir/$template_name"
