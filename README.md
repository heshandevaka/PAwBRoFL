# PAwBRoFL

This repository contains preliminary invesitgations into how to incorportate performance aware model updates to the global model using local client gradients, while mitigating attacks in federated learning setting.

### Dependencies

- conda 4.12.0
- Python 3.7.11
- Screen version 4.06.02 (GNU) 23-Oct-17

### Installation

We are using conda environements for convinient package management. Create a conda environement as follows.

```bash
conda create -n pawbrofl python=3.7.11
conda activate pawbrofl
```

Then, run the following command to install the needed dependencies.

```bash
pip install -r requirements.txt
```

### Usage

Set the following parameters as needed. An example parameter setting is given below. More paramaeters that determine the problem setup can be found in `simulate.py`
```bash
dataset=Fashion-MNIST  # Options: "MNIST" "Fashion-MNIST"
attack=backdoor  # Options: "backdoor" "noattack"
round=5
agg=ex_noregret  # Options: "average" "ex_noregret" "filterl2" 
mu=0.01 # PA parameter (not used for vanilla Byzentine robust implementation)
```
To run Byzantine-robust FL implementation without PA and with clients that have different local data set sizes, run
```bash
python src/simulate.py --dataset=$dataset --attack=$attack --agg=$agg --round=$round --variable_local_size
```
To run the corresponding PAwBroFL implementation, run
```bash
python src/simulate.py --dataset=$dataset --attack=$attack --agg=$agg --round=$round --variable_local_size
```
Alternatively, you can run 
```bash
./train.sh
```
to run both the methods using the same shared parameter setting.

## Acknowledgement

We would like to thank the authors of [secure-robust-federated-learning](https://github.com/wanglun1996/secure-robust-federated-learning), upon which this repo is built on.

