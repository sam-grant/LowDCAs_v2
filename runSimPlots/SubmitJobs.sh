
# Grab fcl file and pass it into RunJob, 25 cores max
for i in {0..20}; do
	echo tmp${i}.fcl
#done | xargs -i --max-procs=21 bash -c ". RunJob.sh {}"
done | xargs -i bash -c ". RunJob.sh {}"

