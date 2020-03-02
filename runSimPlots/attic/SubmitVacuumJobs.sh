# Grab fcl file and pass it into RunJob, 20 cores max
#for i in {0..20}; do
	#echo ../../tmp/tmp${i}.fcl
#    pwd
#    echo /gm2/app/users/sgrant/analysis/LowDCAs_v2/runSimPlots/tmp/tmp${i}.fcl
#done | xargs -i --max-procs=21 bash -c ". RunJob.sh {}"
#done | xargs -i --max-procs=20 bash -c ". RunVacuumJob.sh {}"

# Do this per input file, not fcl file, since we're not scanning dcas
for file in `ls ../runSim/File*/gm2tracker_sim_test_vacuum_20um_truthLR_posTimes.root | sort -V`; do
#    echo /gm2/app/users/sgrant/analysis/LowDCAs_v2/runSim/File${i}/gm2tracker_sim_test_perfect_0.15res.root
#    echo /gm2/app/users/sgrant/analysis/LowDCAs_v2/runSim/File${i}/gm2tracker_sim_test_perfect_nonimalRes_mainFit.root
#    echo /gm2/app/users/sgrant/analysis/LowDCAs_v2/runSim/File${i}/gm2tracker_sim_test_vacuum_20um_truthLR.root
    echo $file #/gm2/app/users/sgrant/analysis/LowDCAs_v2/runSim/File${i}/gm2tracker_sim_test_vacuum_20um_truthLR_posTimes.root
#    echo /gm2/app/users/sgrant/analysis/LowDCAs_v2/runSim/File${i}/gm2tracker_sim_test_perfect_2.0Res_truthLR.root
# done | xargs -i --max-procs=24 bash -c ". RunVacuumJob.sh {}"
done | xargs bash -c ". RunVacuumJob.sh {}" # run without parallelising 
