echo Deleting art RootOutput files
rm File*/RootOutput*.root
echo Deleting log files
rm File*/*.log
echo Moving root files to /gm2/data/users/sgrant/lowDCAs/simFiles
echo File*
mv File*/ /gm2/data/users/sgrant/lowDCAs/simFiles 
echo Done