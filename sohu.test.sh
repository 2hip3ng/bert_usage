#! bin/bash
DATA_DIR=/search/odin/imer/wzp/2019/code/pytorch-pretrained-BERT/examples/sohu/data
FINETUNE_BERT_DIR=/search/odin/imer/wzp/2019/code/pytorch-pretrained-BERT/examples/sohu/senti_epoch3_900
CUDA_VISIBLE_DEVICES=5 python ./../run_classifier.py \
	--task_name sohu_senti \
	--do_test \
	--data_dir $DATA_DIR/ \
	--bert_model $FINETUNE_BERT_DIR \
	--max_seq_length 512 \
	--test_batch_size 30 \
	--output_dir ./senti_test_output_top20

