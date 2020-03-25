# Config
config=vacuum_2um_allTimes_noMaterial_noBinning
#fitMode=tracksMainFit
fitMode=tracksFullSeqFit
#fitMode=truthLRFit

# get piped input file
inFile=$1
echo $inFile

# define output
mkdir $config
mkdir ${config}/${inFile}
cd ${config}/${inFile}

cp ../../files/$inFile .

# Get the list of root files
filesToRun=""
for line in `cat ${inFile}`; do
  filesToRun=$filesToRun" "$line
done

# configure fcl file
cp ../../../fcl/RunWrongLRFilter.fcl tmp_${config}.fcl
echo "physics.filters.filterLowDCAs.TrackModuleLabel : '${fitMode}'" >> tmp_${config}.fcl
echo "physics.filters.filterHighDCAs.TrackModuleLabel : '${fitMode}'" >> tmp_${config}.fcl
echo "physics.filters.filterAllWrongLeadingHits.TrackModuleLabel : '${fitMode}'" >> tmp_${config}.fcl
echo "physics.filters.filterAllRightLeadingHits.TrackModuleLabel : '${fitMode}'" >> tmp_${config}.fcl

# Run sim
echo $filesToRun

# Run filter
gm2 -c tmp_${config}.fcl -s $filesToRun # ${inputDir}/gm2tracker_sim_{0..24}.root

# Switch back to runFilter directory
cd ../../