# Gas gun files with material
#path=/pnfs/GM2/mc/run1_gasgun_1062/runs_1567190000/1567190852
# Gas gun without material
path=/data/gm2/MCEvents/v9_37_00_Vacuum/
#for i in {0..499..20}; do 
#    j=$(($i + 20));
#    ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{$i..$(($i + 20))}.root
#    tmp="/data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{$i..$j}.root";
#    ls $tmp
# done

 
# 218 doesn't work 
#for i in {200..225}; do
#    mkdir VacuumFiles/File${i} 
    # ls $path/gm2ringsim_muon_gasgun_truth_22551${i}_1567190852.1.root > VacuumFiles/File${i}
#done   

#for i in {0..499..20}; do j=$(($i + 19));echo /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{$i..$j}.root; done
# COULDN'T GET LOOP TO WORK, HERE IS QUICK SOLUTION
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{000..019}.root > VacuumFiles/File0
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{020..039}.root > VacuumFiles/File1
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{040..059}.root > VacuumFiles/File2
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{060..079}.root > VacuumFiles/File3
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{080..099}.root > VacuumFiles/File4
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{100..119}.root > VacuumFiles/File5
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{120..139}.root > VacuumFiles/File6
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{140..159}.root > VacuumFiles/File7
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{160..179}.root > VacuumFiles/File8
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{180..199}.root > VacuumFiles/File9
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{200..219}.root > VacuumFiles/File10
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{220..239}.root > VacuumFiles/File11
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{240..259}.root > VacuumFiles/File12
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{260..279}.root > VacuumFiles/File13
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{280..299}.root > VacuumFiles/File14
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{300..319}.root > VacuumFiles/File15
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{320..339}.root > VacuumFiles/File16
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{340..359}.root > VacuumFiles/File17
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{360..379}.root > VacuumFiles/File18
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{380..399}.root > VacuumFiles/File19
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{400..419}.root > VacuumFiles/File20
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{420..439}.root > VacuumFiles/File21
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{440..459}.root > VacuumFiles/File22
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{460..479}.root > VacuumFiles/File23
ls /data/gm2/MCEvents/v9_37_00_Vacuum/gm2ringsim_particle_gun.*{480..499}.root > VacuumFiles/File24