mkdir -p results
mkdir -p checkpoints

dataset=Fashion-MNIST  #"MNIST" "Fashion-MNIST"
attack=backdoor  #"backdoor" "noattack"
round=50
agg=ex_noregret  #"average" "ex_noregret" "filterl2"
mu=0.01

# without PA
python src/simulate.py --dataset=$dataset --attack=$attack --agg=$agg --round=$round --variable_local_size

# with PA
python src/simulate.py --dataset=$dataset --attack=$attack --agg=$agg --round=$round --variable_local_size --pa --mu=$mu