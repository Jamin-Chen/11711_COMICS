#!/bin/bash

export PATH=/usr/local/cuda-11.3/bin/:/media/varunm/Varun_SSD/PANDORA/comics_release/models:$PATH
export PYTHONPATH=$PYTHONPATH:/media/varunm/Varun_SSD/PANDORA/comics_working/comics_release
export LD_LIBRARY_PATH=/usr/local/cuda-11.3/lib64/:/home/varunm/UBUNTU_PANDORA/Softwares/cuda/lib64/:$LD_LIBRARY_PATH
export LIBRARY_PATH=/home/varunm/UBUNTU_PANDORA/Softwares/cuda/:/home/varunm/UBUNTU_PANDORA/Softwares/cuda/lib64/:$LIBRARY_PATH
export CPATH=/home/varunm/UBUNTU_PANDORA/Softwares/cuda/include/:$CPATH

export THEANO_FLAGS="device=cuda0,nvcc.fastmath=True,floatX=float32,optimizer_including=cudnn"

python "$@"
