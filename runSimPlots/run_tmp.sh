# Label piped input file
# inFile=$1
# echo $inFile






#dir="garfield"
#dir="gauss"
dir="perfect_2"

cd ${dir}

for i in {0..20}; do  # Should try to parallise this, 


	# Copy fcl and create a temporary one
    cp -f ../../fcl/RunSimPlots.fcl tmp$i.fcl
    # Append it with to apply a low DCA flag to the appropriate set of tracks#
    echo "services.TFileService.fileName : 'simPlots$i.root'" >> tmp$i.fcl
    echo "services.message.destinations.LogToFile.filename : 'simPlots$i.log'" >> tmp$i.fcl
    echo "physics.analyzers.nonePlusWrong.TrackModuleLabel : tracks$i" >> tmp$i.fcl
    echo "physics.analyzers.twoWrong.TrackModuleLabel : tracks$i" >> tmp$i.fcl

    # Run the tmp fcl file over every sim file
    for j in {200..225}; do

    	mkdir plots${j}
		cd plots${j}
    	gm2 -c ../tmp$i.fcl -s ../../../runSim/File${j}/gm2tracker_sim_scan_${dir}.root
    	cd ../

    done

    hadd -f simPlotsMerged${i}.root plots*/simPlots${i}.root 

done	

cd ../