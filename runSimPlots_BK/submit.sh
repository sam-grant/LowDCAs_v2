#i=1
cd scan
for i in {0..10}; do  
    cp -f ../fcl/RunSimPlotsNoScan.fcl tmp$i.fcl
    echo "services.TFileService.fileName : 'simPlots$i.root'" >> tmp$i.fcl
    echo "services.message.destinations.LogToFile.filename : 'simPlots$i.log'" >> tmp$i.fcl
    echo "physics.analyzers.nonePlusWrong.TrackModuleLabel : tracks$i" >> tmp$i.fcl
    echo "physics.analyzers.twoWrong.TrackModuleLabel : tracks$i" >> tmp$i.fcl
    gm2 -c tmp$i.fcl -s ../runSim/File200/gm2tracker_sim_scan.root
done
cd ../scan
hadd -f simPlots_Garfield.root sca