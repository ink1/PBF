This repo is a copy of Nick Firth's contribution to RDKit
https://github.com/rdkit/rdkit/tree/master/Contrib/PBF
which was adapted to be compiled with RDKit installed via conda

Steps 
- Install Miniconda or Anaconda
- Create RDKit environment
```
conda create -n rdkit2015.03.1 -c rdkit python=2.7 rdkit=2015.03.1
conda activate rdkit2015.03.1
```
- Clone this repository
```
git clone https://github.com/ink1/PBF
cd PBF
```
- Build PBF. The Makefile assumes that the conda environment is located in $HOME/.conda/envs/rdkit2015.03.1.
If this is not the case, change RDBASE in the Makefile
```
make
./demo.exe
python pbf.py
```
The last two commands should succeed without errors.
