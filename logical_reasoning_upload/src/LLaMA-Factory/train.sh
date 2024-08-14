CUDA_VISIBLE_DEVICES=5 llamafactory-cli train \
    --stage sft \
    --do_train True \
    --model_name_or_path /data/disk4/home/chenrui/Qwen1.5-32B-Chat-bnb-4bit \
    --preprocessing_num_workers 16 \
    --finetuning_type lora \
    --template qwen \
    --flash_attn auto \
    --dataset logical_problems_large \
    --cutoff_len 1024 \
    --learning_rate 1.0e-4 \
    --lr_scheduler_type cosine \
    --num_train_epochs 4.0 \
    --max_samples 20000 \
    --per_device_train_batch_size 4 \
    --val_size 0.2 \
    --per_device_eval_batch_size 4 \
    --gradient_accumulation_steps 4 \
    --max_grad_norm 1.0 \
    --evaluation_strategy steps \
    --logging_steps 50 \
    --eval_steps 250 \
    --save_steps 500 \
    --warmup_ratio 0.1 \
    --packing False \
    --report_to none \
    --output_dir saves/qwen1.5-32b-huge-20000/lora/sft \
    --fp16 True \
    --plot_loss True \
    --ddp_timeout 180000000 \
    --include_num_input_tokens_seen True \
    --lora_rank 8 \
    --lora_alpha 16 \
    --lora_dropout 0.1 \
    --lora_target all \
    --plot_loss True \
    --overwrite_cache True \
    --overwrite_output_dir True \
    # --optim adamw_torch \
    # --deepspeed examples/deepspeed/ds_z3_config.json \
