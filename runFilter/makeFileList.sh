config=vacuum_2um_allTimes_noMaterial_noBinning

path=/gm2/data/users/sgrant/tracks/lowDCAs/vacuum_2um_allTimes_noMaterial_noBinning
 
mkdir files

for i in {0..24}; do

    ls ${path}/gm2tracker_sim_${i}.root > files/file${i}

done