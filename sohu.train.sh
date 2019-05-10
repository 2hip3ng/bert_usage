#! bin/bash
DATA_DIR=/search/odin/imer/wzp/2019/code/pytorch-pretrained-BERT/examples/sohu/data
PRETRAINED_BERT_DIR=/search/odin/imer/wzp/2019/code/pytorch-pretrained-BERT/pretrained_models/chinese_L-12_H-768_A-12
CUDA_VISIBLE_DEVICES=4,5,6,7 python ./../run_classifier.py \
	--task_name sohu_entity \
	--do_train \
	--do_eval \
	--data_dir $DATA_DIR/ \
	--bert_model $PRETRAINED_BERT_DIR \
	--max_seq_length 128 \
	--train_batch_size 200 \
	--eval_batch_size 200 \
	--learning_rate 2e-5 \
	--num_train_epochs 3.0 \
	--output_dir ./entity_epoch3_128_bupingheng \
  >./log_entity_epoch3_128_bupingheng.txt  2>&1 &
