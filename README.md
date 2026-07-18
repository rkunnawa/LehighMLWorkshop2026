Disclaimer - Some of these notebooks were prepared with Claude 4.8 Opus (access via Vanderbilt) 

The links for reference are always listed for the corresponding papers and GitHub repos where these were taken from.  

This repo has a LOT of notebooks and access to the data files but we wont be able to run through all of it today. Only a couple of them during the tutorial session. The rest are for you to work on your own during the workshop and they serve as guide! 

This is a very useful page to see all the papers and associated code for ML/AI in HE(N)P - https://iml-wg.github.io/HEPML-LivingReview/ 

external links for data - 
for the quenching study from the paper (PYTHIA, HERWIG, JEWEL, Co-LBT) https://zenodo.org/records/14213191
JEWEL @ RHIC  - https://zenodo.org/records/21386469 
JEWEL @ LHC   - https://zenodo.org/records/21400484
PYTHIA @ RHIC - https://zenodo.org/records/21366666 
PYTHIA @ LHC  - https://zenodo.org/records/21366677 

link to repo for Light flavor vs heavy flavor classification w/ JetVLAD - https://github.com/cplatte24/NetVLAD-tagger-pytorch/tree/main 

So we are going to have four potential options here - 
I)   running it on your laptop (easiest - via a new anaconda environment with the work_py_ml.yml file) 
II)  running it on your laptop via a docker container - docker pull rkunnawa/work_py_ml_image  
III) running it on sdcc via a singularity container (just pulling the docker as a singularity) but jupyter notebooks dont seem to work ok...  you will have to run all python code on the terminal) 
IV)  runnint it on sdcc with a conda environment (this should be ideal but for some reason im unable to get our conda environment to install correctly) 

Instructions for I - 
this is the 'easiest' but it does sorta require you to have a decent-ish computer with enough space. install anaconda and create a new environment with the 'work_py_ml.yml' file. then just open up a jupyter notebook and you should be good to run everything :) 


Instructions for II - 
This is just a slight bit complicated but still doable! 



Instructions for III - 



Instructions for IV - 
First login with your specific node! 
```
(base) kunnar1@ASC6RWCQTQ ~ % ssh -L 8089:localhost:8089 -J kraghav@ssh.sdcc.bnl.gov kraghav@sphnxuser04.sdcc.bnl.gov
```
Now setup sPHENIX - 
```
[kraghav@sphnxuser04 ~]$ source setup_sphenix.csh 
```
Then I created a new directory called ML_AI_Lehigh and cd into that directory and setup the condo environment! 
Download this environment yaml file from GitHub - 
```
[kraghav@sphnxuser04 ML_AI_Lehigh]$ git clone https://github.com/rkunnawa/LehighMLWorkshop2026.git 
```
Now, lets build the condo environment - 
```
[kraghav@sphnxuser04 LehighMLWorkshop2026]$ conda env create --file work_py_ml.yml 
```
Then lets open a Jupyter notebook with that specific portal that we emphasized - 
```
[kraghav@sphnxuser04 LehighMLWorkshop2026]$ jupyter-lab --no-browser --port=8089
```
It will print out a bunch of stuff - take the link that it points to for the notebook and then open it on a browser on your laptop - NOTE - this is a link SPECIFIC to you! It will not work for others! 




