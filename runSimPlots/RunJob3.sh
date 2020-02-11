# Label piped input fcl file
inFile=$1
echo $inFile

#dir="garfield"
#dir="gauss"
dir="perfect_2"

cd ${dir}

for i in {200..225}; do

    if [ $i -eq 218 ]
    then
        continue
    fi

	# mkdir plots${i}
    cd plots${i}
    pwd

    gm2 -c $inFile -s ../../../runSim/File${i}/gm2tracker_sim_scan_${dir}.root

    # file="../runSim/File${i}/gm2tracker_sim_scan_${dir}.root"
    # ls $file
    cd ../

done

