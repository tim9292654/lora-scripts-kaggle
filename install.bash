#!/usr/bin/bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Installing torch & xformers..."

    echo "install torch 2.0.1+cu117"
    pip -q install torch==2.0.1 torchvision xformers triton 

echo "Installing deps..."
cd "$script_dir/sd-scripts" || exit

pip install --upgrade -r requirements.txt

pip  install --upgrade rich
pip  install --upgrade fastapi==0.95.1
pip  install --upgrade uvicorn==0.22.0
pip  install --upgrade lion-pytorch==0.1.2
pip  install --upgrade lycoris-lora==1.9.0.dev11
pip  install --upgrade prodigyopt==1.0
pip  install --upgrade dadaptation==3.1
pip  install --upgrade wandb==0.15.8
pip  install --upgrade safetensors==0.3.1
pip  install --upgrade bitsandbytes==0.41.1
pip  install --upgrade pandas
pip  install --upgrade scipy
pip uninstall -y tensorboard   tb-nightly
pip install tensorboard
apt-get update
apt-get install sudo
pip install protobuf==3.20.3 -i https://mirror.baidu.com/pypi/simple
pip install --upgrade --no-deps pytorch-optimizer -i https://mirror.baidu.com/pypi/simple
DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
DEBIAN_FRONTEND=noninteractive apt-get install -y python3-tk
cd "$script_dir" || exit




echo "依赖安装完成请继续下一步"
