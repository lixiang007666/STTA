# STTA

:rocket: The first version of the code will be open-sourced soon.


# TODO

conda create -n stta python=3.9.7


conda activate stta


pip3 install torchvision==0.8.2

pip3 install timm==0.3.2
pip3 install mmcv-full==1.2.7
pip3 install opencv-python==4.5.1.48
pip3 install -e . --user


bash tools/dist_source_train.sh 8
bash stta.sh

