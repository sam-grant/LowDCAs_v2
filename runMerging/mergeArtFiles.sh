name="vacuum_2um_allTimes_noMaterial_withBinning"

# check input exists
lr /gm2/app/users/sgrant/analysis/LowDCAs_v2/runSim/File{0..24}/gm2tracker_sim_${name}.root

# copy fcl over 
cp -f /gm2/app/users/sgrant/analysis/LowDCAs_v2/fcl/MergeArtFiles.fcl tmp.fcl

# append fcl with output to prevent overwrites
newFile=${name}.root
echo "outputs.o1.fileName: '${newFile}'" >> tmp.fcl

# run
gm2 -c tmp.fcl -s /gm2/app/users/sgrant/analysis/LowDCAs_v2/runSim/File{0..24}/gm2tracker_sim_${name}.root


