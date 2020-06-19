#! bin/bash
CUDA_VISIBLE_DEVICES=4,5,6,7 python bertModel.py \
	--task_name yxcr \
	--do_train \
	--do_eval \
	--data_dir data \
	--bert_model bert_model \
	--max_seq_length 128 \
	--train_batch_size 100 \
	--eval_batch_size 100 \
	--learning_rate 2e-5 \
	--num_train_epochs 1.0 \
	--output_dir finetune_output \


#  > log.txt  2>&1 &
