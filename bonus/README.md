# HW2 bonus 須先把HW1 中data 存在./data 中

## Intent classification
### Training
```bash
python inent.py --model_name_or_path <model_name_or_path>

```
* **model_name_or_path**: Path to pretrained model or model identifier from huggingface.co/models. 



### Testing
```bash
python inent.py --model_name_or_path <model_name_or_path> --do_predict
```
* **model_name_or_path**: Path to pretrained model or model identifier from huggingface.co/models.
---
## Slot tagging
### Training
```bash
python slot.py --model_name_or_path <model_name_or_path>
```
* **model_name_or_path**: Path to pretrained model or model identifier from huggingface.co/models.

### Testing
```bash
python slot.py --model_name_or_path <model_name_or_path> --do_predict

```
* **model_name_or_path**: Path to pretrained model or model identifier from huggingface.co/models.

