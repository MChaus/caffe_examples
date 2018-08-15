# N.B. This does not download the ilsvrcC12 data set, as it is gargantuan.
# This script downloads the imagenet example auxiliary files including:
# - the ilsvrc12 image mean, binaryproto
# - synset ids and words
# - Python pickle-format data of ImageNet graph structure and relative infogain
# - the training splits with labels

pushd $PSScriptRoot

echo "Downloading..."

# get the path to 7-zip from the registry
$7zip = Join-Path (get-item HKLM:\SOFTWARE\7-Zip).GetValue('Path') '7z.exe'

# Start-BitsTransfer -Source "http://dl.caffe.berkeleyvision.org/caffe_ilsvrc12.tar.gz" -Destination "caffe_ilsvrc12.tar.gz"
wget -Uri "http://dl.caffe.berkeleyvision.org/caffe_ilsvrc12.tar.gz" -OutFile "caffe_ilsvrc12.tar.gz"
. $7zip x "caffe_ilsvrc12.tar.gz"
. $7zip x "caffe_ilsvrc12.tar"
popd