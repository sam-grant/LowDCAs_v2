for i in {200..225}; do
#    mkdir plots${i}
    cd plots${i}
#    gm2 -c ../../fcl/RunPlotsSimTest.fcl -s ../../runSim/File${i}/gm2tracker_particle_gun_test.root
#    gm2 -c ../../fcl/RunPlotsSimScan.fcl -s ../../runSim/File${i}/gm2tracker_sim_scan.root
#    gm2 -c ../../fcl/RunPlotsSimLongScan.fcl -s ../../runSim/File${i}/gm2tracker_sim_long_scan.root
#    gm2 -c ../../fcl/RunPlotsSimScanTruthT0.fcl -s ../../runSim/File${i}/gm2tracker_sim_scan_truth_t0.root
    # gm2 -c ../../fcl/RunPlotsTestTruthT0.fcl -s ../../runSim/File${i}/gm2tracker_sim_scan_truth_t0.root
#    gm2 -c ../../fcl/RunPlotsSimTestPerfectTracking.fcl -s ../../runSim/File${i}/gm2tracker_sim_test_perfect_tracking.root
    gm2 -c ../../fcl/RunSimPlots.fcl -s ../../runSim/File${i}/gm2tracker_sim_scan.root
    cd ../
done

#hadd -f simTestPlots.root plots*/simTestPlots.root
#hadd -f simScanPlots.root plots*/simScanPlots.root
#hadd -f simLongScanPlots.root plots*/simLongScanPlots.root
hadd -f simPlots.root plots*/simPlotsNoScan.root