mkdir -p results
mkdir -p checkpoints

dataset=Fashion-MNIST  #"MNIST" "Fashion-MNIST"
attack=backdoor  #"backdoor" "krum" "modelpoisoning" "noattack" "trimmedmean"
round=50
agg=ex_noregret  #"average" "bulyankrum" "bulyanmedian" "bulyantrimmedmean" "ex_noregret" "filterl2" "krum" "median" "mom_ex_noregret" "mom_filterl2" "trimmedmean"
mu=0.01

# without PA
python src/simulate.py --dataset=$dataset --attack=$attack --agg=$agg --round=$round --variable_local_size

# with PA
python src/simulate.py --dataset=$dataset --attack=$attack --agg=$agg --round=$round --variable_local_size --pa --mu=$mu