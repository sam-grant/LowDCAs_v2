# Generate tmp fcls (appended RunSimPlots.fcl) with different low DCA thresholds
for i in {0..20}; do  

	# Copy fcl and create a temporary one
    cp -f ../../fcl/RunSimPlots.fcl tmp/tmp$i.fcl
    # Append it with to apply a low DCA flag to the appropriate set of tracks#
    echo "services.TFileService.fileName : 'simPlots$i.root'" >> tmp$i.fcl
    echo "services.message.destinations.LogToFile.filename : 'simPlots$i.log'" >> tmp$i.fcl
    echo "physics.analyzers.nonePlusWrong.TrackModuleLabel : tracks$i" >> tmp$i.fcl
    echo "physics.analyzers.twoWrong.TrackModuleLabel : tracks$i" >> tmp$i.fcl

done