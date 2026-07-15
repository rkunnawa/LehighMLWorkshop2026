Disclaimer - Some of these notebooks were prepared with Claude 4.8 Opus (access via Vanderbilt) 
The links for reference are always listed for the corresponding papers and GitHub repos where these were taken from.  

This is a very useful page to see all the papers and associated code for ML/AI in HE(N)P - https://iml-wg.github.io/HEPML-LivingReview/ 

Setup instructions for Jupyter notebook at BNL - 

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

The GitHub repo you pulled has a LOT of notebooks and access to the data files but we wont be able to run through all of it today. Only a couple of them during the tutorial session. The rest are for you to work on your own during the workshop and they serve as guide! 


