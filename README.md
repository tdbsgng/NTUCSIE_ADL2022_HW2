# HW2

## Enviroments
```bash
pip install -r requirements.txt
```

## Multiple choice
### Training
```bash
python multiple-choice/run_multiple_choice.py \
  --model_name_or_path <model_name_or_path> \
  --output_dir <output_dir> \
  --train_file <train_file> \
  --validation_file <validation_file> \
  --context_file <context_file> \
  --with_tracking\
  --per_device_train_batch_size <per_device_eval_batch_size>\
  --gradient_accumulation_steps <gradient_accumulation_steps>\
  --seed <seed>\
  --max_seq_length <max_seq_length> \
  --learning_rate <learning_rate> \
  --num_train_epochs <num_train_epochs> \

```
* **model_name_or_path**: Path to pretrained model or model identifier from huggingface.co/models. e.g.: bert-base-chinese or hfl/chinese-roberta-wwm-ext
* **output_dir**: The output directory where the model predictions and checkpoints will be written. e.g.: ./bert/multiple-choice or ./roberta-wwm-ext/multiple_choice
* **train_file**: path to training data file (after changing format). e.g.: ./data/train.json
* **validation_file**: path to validation data file (after changing format). e.g.: ./data/valid.json
* **context_file**: path to the context file. e.g.: ./data/context.json


### Testing
```bash
python mc.py \
  --model_name_or_path <model_name_or_path> \
  --do_predict \
  --context_file "${1}" \
  --test_file "${2}" \
  --pred_file ./mc_output.json \
```
* **model_name_or_path**: Path to pretrained model or model identifier from huggingface.co/models. e.g.: ./bert/multiple-choice or ./roberta-wwm-ext/multiple_choice
* **output_dir**: The output directory where the model predictions and checkpoints will be written. e.g.: ./bert/multiple-choice or ./roberta-wwm-ext/multiple_choice
* **test_file**: path to testing data file (after changing format) e.g.: ./data/test.json 
* **context_file**: path to the context file. e.g.: ./data/context.json
* **pred_file**: MC pred_file need to be the same as QA test_file
---
## Question Answering
### Training
```bash
 python qa.py \
  --model_name_or_path <model_name_or_path>\
  --train_file <train_file>\
  --validation_file <validation_file> \
  --learning_rate <learning_rate> \
  --num_train_epochs <num_train_epochs> \
  --output_dir <output_dir>\
  --with_tracking\
  --per_device_train_batch_size <per_device_eval_batch_size>\
  --gradient_accumulation_steps <gradient_accumulation_steps>\
  --seed <seed>
```
* **model_name_or_path**: Path to pretrained model or model identifier from huggingface.co/models. e.g.: bert-base-chinese or hfl/chinese-roberta-wwm-ext
* **output_dir**: The output directory where the model predictions and checkpoints will be written. e.g.: ./bert/qa or ./roberta-wwm-ext/qa
* **train_file**: path to training data file (after changing format). e.g.: ./data/train.json
* **validation_file**: path to validation data file (after changing format). e.g.: ./data/valid.json
* **context_file**: path to the context file. e.g.: ./data/context.json

### Testing
```bash
python qa.py \
  --model_name_or_path ./ckpt/macbert2x64/qa\
  --do_predict\
  --context_file <context_file>\
  --test_file <test_file>\
  --pred_file <pred_file>\
  --output_dir <output_dir>


```
* **model_name_or_path**: Path to pretrained model or model identifier from huggingface.co/models. e.g.: ./bert/qa or ./roberta-wwm-ext/qa
* **output_dir**: The output directory where the model predictions and checkpoints will be written. e.g.: ./bert/qa or ./roberta-wwm-ext/qa
* **test_file**: path to testing data file, need to be the same as the pred_file of MC
* **context_file**: path to the context file. e.g.: ./temp/context.json
* **pred_file**: Path to prediction file. e.g.: ./pred.csv

## Reproduce my result 
```bash
bash download.sh
bash ./run.sh /path/to/context.json /path/to/test.json  /path/to/pred/prediction.csv
```
