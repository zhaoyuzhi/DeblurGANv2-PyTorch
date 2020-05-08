python train.py \
--pre_train True \
--baseroot_train_blur "/mnt/lustre/zhaoyuzhi/dataset/deblur/GOPRO/train/blur" \
--baseroot_train_sharp "/mnt/lustre/zhaoyuzhi/dataset/deblur/GOPRO/train/sharp" \
--baseroot_val_blur "/mnt/lustre/zhaoyuzhi/dataset/deblur/GOPRO/test/blur" \
--baseroot_val_sharp "/mnt/lustre/zhaoyuzhi/dataset/deblur/GOPRO/test/sharp" \
--network_type "MobileNetv2" \
--perceptualnet_name "./trained_models/vgg16_pretrained.pth" \
--load_name "" \
--multi_gpu False \
--task_name "gopro" \
--save_path "./models" \
--sample_path "./samples" \
--save_mode 'epoch' \
--save_by_epoch 20 \
--save_by_iter 10000 \
--lr 0.0001 \
--b1 0.5 \
--b2 0.999 \
--weight_decay 0.0 \
--train_batch_size 1 \
--val_batch_size 1 \
--epochs 301 \
--lr_decrease_epoch 150 \
--num_workers 8 \
--patch_size 64 \
--lambda_l1 0.5 \
--lambda_percep 0.006 \
--lambda_gan 0.01 \
--pad "zero" \
--activ_g "relu" \
--activ_d "lrelu" \
--norm "bn" \
--in_channels 3 \
--out_channels 3 \
--filter_channels 128 \
--mid_channels 64 \
--start_channels 64 \
--nlayer_d 3 \
--use_sigmoid False \
--init_type "normal" \
--init_gain 0.02 \
--crop_size 256 \
