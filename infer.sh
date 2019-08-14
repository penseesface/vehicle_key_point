input_dir="/home/wanghao/github/AICity/Track2(ReID)/part3_model/vehicle-keypoint/datasets/veri/VeRi/image_query" # input training/testing images
image_list="/home/wanghao/github/AICity/Track2(ReID)/part3_model/vehicle-keypoint/datasets/veri/VeRi/imglst.txt" # list of image names
output_dir="query_hm" # output dir of the keypoint heatmap of input images

# for example
# input_dir="data/aicity_keypoint/images"
# image_list="./images.txt"
# output_dir="../vehicle-reid-keypoint/examples/data/small_vehicle/masks"

CUDA_VISIBLE_DEVICES=0 \
python pose_estimation/infer.py \
    --cfg experiments/veri/resnet50/256x256_d256x3_adam_lr1e-3.yaml \
    --gpus 0 \
    --batch-size 64 \
    --input-dir $input_dir \
    --input-list $image_list \
    --model-file output/veri/pose_resnet_50/256x256_d256x3_adam_lr1e-3/model_best.pth.tar \
    --output-dir $output_dir \
