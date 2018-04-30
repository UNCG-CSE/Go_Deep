cd src

## Assumes that GRU_Based.tsv and the other output files only have Gene Ontology/ProteinOntology or one of the other ontology outputs. This means that the models will need to be run separately for each ontology data. 



## To evaluate performance for Gene Ontology:
python computeSim.py ../data/GRU_Based.tsv ../data/GO_AllSubsumers.tsv
python computeSim.py ../data/LSTM_Based.tsv ../data/GO_AllSubsumers.tsv
python computeSim.py ../data/Window_Based.tsv ../data/GO_AllSubsumers.tsv
python computeSim.py ../data/RNN_Based.tsv ../data/GO_AllSubsumers.tsv


# GRU 0.699
# LSTM 0.018
# Window 0.583
# RNN 0.84

## To evaluate performance for Cell Ontology (CL) This assumes that the model outputs now contain CL results. Change data file names if necessary:
python computeSim.py ../data/GRU_Based.tsv ../data/CL_AllSubsumers.tsv
python computeSim.py ../data/LSTM_Based.tsv ../data/CL_AllSubsumers.tsv
python computeSim.py ../data/Window_Based.tsv ../data/CL_AllSubsumers.tsv
python computeSim.py ../data/RNN_Based.tsv ../data/CL_AllSubsumers.tsv


## To evaluate performance for Protein Ontology (PR):
python computeSim.py ../data/GRU_Based.tsv ../data/PR_AllSubsumers.tsv
python computeSim.py ../data/LSTM_Based.tsv ../data/PR_AllSubsumers.tsv
python computeSim.py ../data/Window_Based.tsv ../data/PR_AllSubsumers.tsv
python computeSim.py ../data/RNN_Based.tsv ../data/PR_AllSubsumers.tsv

## To evaluate performance for Sequence Ontology (SO):
python computeSim.py ../data/GRU_Based.tsv ../data/SO_AllSubsumers.tsv
python computeSim.py ../data/LSTM_Based.tsv ../data/SO_AllSubsumers.tsv
python computeSim.py ../data/Window_Based.tsv ../data/SO_AllSubsumers.tsv
python computeSim.py ../data/RNN_Based.tsv ../data/SO_AllSubsumers.tsv