# Grab fcl file and pass it into RunJob, 20 cores max
for i in {0..20}; do
	#echo ../../tmp/tmp${i}.fcl
    pwd
    echo tmp/tmp${i}.fcl
#done | xargs -i --max-procs=21 bash -c ". RunJob.sh {}"
done | xargs -i --max-procs=20 bash -c ". RunJob.sh {}"

