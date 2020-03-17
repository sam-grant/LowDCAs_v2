# Grab fcl file and pass it into RunJob, 20 cores max
for i in {0..1}; do
	#echo ../../tmp/tmp${i}.fcl
    
    echo /gm2/app/users/sgrant/analysis/LowDCAs_v2/runSimPlots/tmp/tmp${i}.fcl
#done | xargs -i --max-procs=21 bash -c ". RunJob.sh {}"
done | xargs -i --max-procs=25 bash -c ". RunJob.sh {}"
#done | xargs -i bash -c ". RunJob.sh {}"

