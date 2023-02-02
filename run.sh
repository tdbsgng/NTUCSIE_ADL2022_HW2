
python mc.py \
  --model_name_or_path ./ckpt/mc \
  --do_predict \
  --context_file "${1}" \
  --test_file "${2}" \
  --pred_file ./mc_output.json \


python qa.py \
  --model_name_or_path ./ckpt/qa\
  --do_predict\
  --context_file "${1}"\
  --test_file ./mc_output.json\
  --pred_file "${3}"\
  --output_dir .
