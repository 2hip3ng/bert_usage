#! bin/bash
CUDA_VISIBLE_DEVICES=5 python berModel.py \
	--task_name yxcr \
	--do_test \
	--data_dir data/ \
	--bert_model finetune_output \
	--max_seq_length 512 \
	--test_batch_size 30 \
	--output_dir finetune_output

