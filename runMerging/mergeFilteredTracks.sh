config="vacuum_2um_allTimes_noMaterial_withBinning/trackMainFit"
#config="vacuum_2um_allTimes_noMaterial_withBinning/fullSeqFit"

fitMode=trackMainFit
#fitMode=trackFullSeqFit

# fit these in
#filterMode=filtered_tracks_lowDCAs.root
#filterMode2=filtered_tracks_highDCAs.root
#filterMode3=filtered_tracks_allRightLeadingHits.root
#filterMode4=filtered_tracks_allWrongLeadingHits.root

# output dir
outputDir=/gm2/data/users/sgrant/tracks/lowDCAs/${config}/${fitMode1}/filteredTracks
outputDir2=/gm2/data/users/sgrant/tracks/lowDCAs/${config}/${fitMode2}/

# copy fcl over 
cp ../fcl/MergeArtFiles.fcl tmp.fcl

# append fcl with output to prevent overwrites
newFile=${config}.root
echo "outputs.o1.fileName: '${filterMode}'" >> tmp.fcl

# run
gm2 -c tmp.fcl -s /gm2/app/users/sgrant/analysis/LowDCAs_v2/runSim/File{0..24}/gm2tracker_sim_${name}.root


