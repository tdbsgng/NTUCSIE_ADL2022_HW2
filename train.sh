python mc.py \
  --model_name_or_path hfl/chinese-roberta-wwm-ext\
  --train_file ./data/train.json \
  --context_file ./data/context.json \
  --validation_file ./data/valid.json \
  --learning_rate 3e-5 \
  --num_train_epochs 3 \
  --output_dir $1/mc\
  --with_tracking

  python qa.py \
  --model_name_or_path hfl/chinese-macbert-large\
  --train_file ./data/train.json \
  --validation_file ./data/valid.json \
  --learning_rate 5e-5 \
  --num_train_epochs 3 \
  --output_dir ./ckpt/macbert2x32_test/qa\
  --with_tracking\
  --per_device_train_batch_size 2\
  --gradient_accumulation_steps 32\
  --seed 11922150
