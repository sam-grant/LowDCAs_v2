dir="garfield"
#dir="perfect"
#dir="gauss"
    
for j in {0..20}; do

    echo hadd -f ${dir}/simPlotsMerged${j}.root ${dir}/plots*/simPlots${j}.root
    hadd -f ${dir}/simPlotsMerged${j}.root ${dir}/plots*/simPlots${j}.root

done