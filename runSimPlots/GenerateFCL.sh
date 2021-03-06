# Generate tmp fcls (appended RunSimPlots.fcl) with different low DCA thresholds
for i in {0..20}; do  

	# Copy fcl and create a temporary one
    cp -f ../fcl/RunSimPlots.fcl tmp/tmp$i.fcl
    # Append it with to apply a low DCA flag to the appropriate set of tracks#
    echo "services.TFileService.fileName : 'simPlots$i.root'" >> tmp/tmp$i.fcl
    echo "services.message.destinations.LogToFile.filename : 'simPlots$i.log'" >> tmp/tmp$i.fcl
    echo "physics.analyzers.nonePlusWrong.TrackModuleLabel : tracks$i" >> tmp/tmp$i.fcl
    echo "physics.analyzers.noneWrong.TrackModuleLabel : tracks$i" >> tmp/tmp$i.fcl
    echo "physics.analyzers.onePlusWrong.TrackModuleLabel : tracks$i" >> tmp/tmp$i.fcl
    echo "physics.analyzers.oneWrong.TrackModuleLabel : tracks$i" >> tmp/tmp$i.fcl
    echo "physics.analyzers.twoPlusWrong.TrackModuleLabel : tracks$i" >> tmp/tmp$i.fcl
    echo "physics.analyzers.twoWrong.TrackModuleLabel : tracks$i" >> tmp/tmp$i.fcl
    echo "physics.analyzers.threeWrong.TrackModuleLabel : tracks$i" >> tmp/tmp$i.fcl
    echo "physics.analyzers.threePlusWrong.TrackModuleLabel : tracks$i" >> tmp/tmp$i.fcl
    echo "physics.analyzers.fourWrong.TrackModuleLabel : tracks$i" >> tmp/tmp$i.fcl
    echo "physics.analyzers.fourPlusWrong.TrackModuleLabel : tracks$i" >> tmp/tmp$i.fcl
    echo "physics.analyzers.fiveWrong.TrackModuleLabel : tracks$i" >> tmp/tmp$i.fcl
    echo "physics.analyzers.fivePlusWrong.TrackModuleLabel : tracks$i" >> tmp/tmp$i.fcl

done
