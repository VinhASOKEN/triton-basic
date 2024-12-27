tritonserver --model-repository=/Vinh_triton/deploy_models/

docker run --rm --gpus '"device=0,1,2,3,4,5"' -it --name triton_vinh_universal -p8390:8000 -p8391:8001 \
           -v /home2/vinhnguyen/Triton:/Vinh_triton/ nvcr.io/nvidia/tritonserver:22.12-py3
