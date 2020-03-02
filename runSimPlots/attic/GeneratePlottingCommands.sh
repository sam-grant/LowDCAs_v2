dir="vacuum_20um_truthLR_posTimes"
mkdir $dir
cd $dir

for i in {0..24}; do # for vacuum files
    mkdir plots${i}
    cd plots${i}
#    gm2 -c ../../fcl/RunPlotsSimTest.fcl -s ../../runSim/File${i}/gm2tracker_particle_gun_test.root
#    gm2 -c ../../fcl/RunPlotsSimScan.fcl -s ../../runSim/File${i}/gm2tracker_sim_scan.root
#    gm2 -c ../../fcl/RunPlotsSimLongScan.fcl -s ../../runSim/File${i}/gm2tracker_sim_long_scan.root
#    gm2 -c ../../fcl/RunPlotsSimScanTruthT0.fcl -s ../../runSim/File${i}/gm2tracker_sim_scan_truth_t0.root
    # gm2 -c ../../fcl/RunPlotsTestTruthT0.fcl -s ../../runSim/File${i}/gm2tracker_sim_scan_truth_t0.root
#    gm2 -c ../../fcl/RunPlotsSimTestPerfectTracking.fcl -s ../../runSim/File${i}/gm2tracker_sim_test_perfect_tracking.root
    command="gm2 -c ../../../fcl/RunSimPlots.fcl -s ../../../runSim/File${i}/gm2tracker_sim_test_${dir}.root" >> command
    cd ..
done 

# for i in {0..24}; do # for vacuum files
    # mkdir plots${i}
    # cd plots${i}



# | xargs -i --max-procs=24 bash -c ". RunVacuumJob.sh {}"

# Do this per input file, not fcl file, since we're not scanning dcas
# for file in `ls ../runSim/File*/gm2tracker_sim_test_vacuum_20um_truthLR_posTimes.root | sort -V`; do
#    echo /gm2/app/users/sgrant/analysis/LowDCAs_v2/runSim/File${i}/gm2tracker_sim_test_perfect_0.15res.root
#    echo /gm2/app/users/sgrant/analysis/LowDCAs_v2/runSim/File${i}/gm2tracker_sim_test_perfect_nonimalRes_mainFit.root
#    echo /gm2/app/users/sgrant/analysis/LowDCAs_v2/runSim/File${i}/gm2tracker_sim_test_vacuum_20um_truthLR.root
    # echo $file #/gm2/app/users/sgrant/analysis/LowDCAs_v2/runSim/File${i}/gm2tracker_sim_test_vacuum_20um_truthLR_posTimes.root
#    echo /gm2/app/users/sgrant/analysis/LowDCAs_v2/runSim/File${i}/gm2tracker_sim_test_perfect_2.0Res_truthLR.root
# done | xargs -i --max-procs=24 bash -c ". RunVacuumJob.sh {}"
# done | xargs bash -c ". RunVacuumJob.sh {}" # run without parallelising 
