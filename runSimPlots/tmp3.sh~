#dir="vacuum_20um_fullSeqFit_allTimes" # DONE
#dir="vacuum_20um_fullSeqFit_posTimes" # TODO 1
dir="vacuum_20um_mainFit_allTimes" # TODO 2
#dir="vacuum_20um_fullSeqFit_posTimes" # TODO 3
#mkdir $dir
cd $dir
for i in {0..24}; do # for vacuum files
    mkdir plots${i}
    cd plots${i}
    gm2 -c ../../../fcl/RunSimPlots.fcl -s ../../../runSim/File${i}/gm2tracker_sim_test_${dir}.root
#    gm2 -c ../../fcl/RunSimPlots_PassesFilter.fcl -s ../../../runSimPlots/${dir}/plots${i}/passes_filter.root    # gm2tracker_sim_test_${dir}.root
    cd ../
done
#hadd -f ${dir}_passed_filter.root plots{0..24}/passes_filter_plots.root
hadd -f ${dir}.root plots{0..24}/simPlots.root
cd ..