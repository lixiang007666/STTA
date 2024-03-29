<p align="center"><img src="imgs/stta_logo.png"/ width="100%"><br></p>

This is the official repository for the paper: [Cache-Driven Spatial Test-Time Adaptation for Cross-Modality Medical Image Segmentation](#). 


## News
Here is the latest news:
- :rocket: The first version of the code has been released. The complete and optimized version of STTA will be released shortly.

## Overview 
TODO


## Quick Start

### Installation

```python
git clone https://github.com/lixiang007666/STTA.git
cd STTA
conda create -n stta python=3.9.7
conda activate stta
pip3 install torchvision==0.8.2
pip3 install timm==0.3.2
pip3 install mmcv-full==1.2.7
pip3 install opencv-python==4.5.1.48
pip3 install -e . --user
```

### Training and Testing
```shell
bash tools/dist_source_train.sh 8
bash stta.sh
```

## BibTeX
TODO
