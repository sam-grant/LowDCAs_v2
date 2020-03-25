# Grab each file list and pipe the into xargs
# for fileList in `ls /gm2/app/users/sgrant/Offline/LowDCAs/FileLists`; do
#     echo $fileList
# done | xargs -i --max-procs=20 bash -c ". /gm2/app/users/sgrant/Offline/LowDCAs/Scripts/RunJob.sh {}"

for file in `cd VacuumFiles && ls File*`; do
  echo $file
#  return
done | xargs -i --max-procs=30 bash -c ". RunVacuumJob.sh {}"
#done | xargs -i --max-procs=2 bash -c ". RunVacuumJob.sh {}"