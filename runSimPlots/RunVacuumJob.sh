# Label piped input fcl file
inFile=$1
echo $inFile

#dir="garfield"
#dir="gauss"
dir="perfect"

cd ${dir}

# Sim output files
for i in {0..24}; do
    
    mkdir plots${i}
    cd plots${i}

    pwd
    
    gm2 -c $inFile -s /gm2/app/users/sgrant/analysis/LowDCAs_v2/runSim/File${i}/gm2tracker_sim_scan_${dir}.root

    cd ../

done

cd ../