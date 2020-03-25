# get piped input file
inFile=$1
echo $inFile

# Get the list of root files
filesToRun=""
for line in `cat $inFile`; do
  filesToRun=$filesToRun" "$line
done

# Run sim
echo $filesToRun

# Config
config=vacuum_2um_allTimes_noMaterial_noBinning
fitMode=tracksMainFit
#fitMode=tracksFullSeqFit
#fitMode=truthLRFit

# define output
outputDir=/gm2/data/users/sgrant/tracks/lowDCAs/${config}/filteredTracks

# get fcl
cp ../fcl/RunWrongLRFilter.fcl tmp_${config}.fcl

echo "physics.filters.filterLowDCAs.TrackModuleLabel : '${fitMode}'" >> tmp_${config}.fcl
echo "physics.filters.filterHighDCAs.TrackModuleLabel : '${fitMode}'" >> tmp_${config}.fcl
echo "physics.filters.filterAllWrongLeadingHits.TrackModuleLabel : '${fitMode}'" >> tmp_${config}.fcl
echo "physics.filters.filterAllRightLeadingHits.TrackModuleLabel : '${fitMode}'" >> tmp_${config}.fcl

mkdir ${outputDir}
mkdir ${outputDir}/${fitMode}

# cp fcl to to this directory
cp tmp_${config}.fcl ${outputDir}/${fitMode}

# cd to output dir
cd ${outputDir}/${fitMode}

# Run filter
gm2 -c tmp_${config}.fcl -s $filesToRun # ${inputDir}/gm2tracker_sim_{0..24}.root

# Switch back to runFilter directory
cd /gm2/app/users/sgrant/analysis/LowDCAs_v2/runFilter

echo "Finished"