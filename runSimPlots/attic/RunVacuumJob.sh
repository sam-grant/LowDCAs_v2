#
#	NEED TO PARALLELISE PER FILE
#
#



# Label piped input fcl file
inFile=$1
echo $inFile

#dir="garfield"
#dir="gauss"
#dir="perfect"
#dir="perfectVacuumNominal_mainFit"
#dir="perfectVacuum2.0Res_truthLR"
#dir="perfectVacuumNominal_mainFit"
#dir="vaccuum5umTruthLR"
#dir="vaccuum20umTruthLR"
dir="vacuum20umTruthLR_posTimes"

cd ${dir}

# Sim output files
for i in {0..24}; do 
    
    mkdir plots${i}
    cd plots${i}

    pwd
    
    gm2 -c ../../../fcl/RunSimPlots.fcl -s $inFile

    cd ../

done

cd ../

hadd -f ${dir}/simPlotsMerged.root ${dir}/plots*/simPlots.root