#!/bin/bash

# Uninstall caffe from Sferes
rm -rf ~/Workspace/fooling/sferes/include/caffe/
rm ~/Workspace/fooling/sferes/lib/libcaffe.*
echo "Removed old installation in ~/Workspace/fooling/sferes/"

# Reinstall caffe to Sferes

# Include files
cp -R ~/Workspace/fooling/caffe/include/caffe/ ~/Workspace/fooling/sferes/include/
echo "Installed header files from ~/Workspace/fooling/caffe/include/caffe/"

cp -R ~/Workspace/fooling/caffe/build/src/caffe/ ~/Workspace/fooling/sferes/include/
echo "Installed header files from ~/Workspace/fooling/caffe/build/src/caffe/"

# Library files
cp ~/Workspace/fooling/caffe/build/lib/libcaffe.* ~/Workspace/fooling/sferes/lib/
echo "Installed library files from ~/Workspace/fooling/caffe/build/lib/"

echo "Done."
