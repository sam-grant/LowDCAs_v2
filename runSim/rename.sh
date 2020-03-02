for i in {0..24}; do
    for file in `ls File${i}/gm2tracker_sim_test_vacuum_20um_fullSeqFit_allTimes.root`; do 
	lr $file
	mv $file File${i}/gm2tracker_sim_test_vacuum_20um_fullSeqFit_posTimes.root 
    done
done