#for file in `cd files && ls file*`; do
#  echo $file
#done | xargs -i --max-procs=24 bash -c ". runFilter.sh {}"

for file in `cd files && ls file*`; do
  echo $file
done | xargs -i --max-procs=24 bash -c ". tmp1.sh {}"

for file in `cd files && ls file*`; do
  echo $file
done | xargs -i --max-procs=24 bash -c ". tmp2.sh {}"

