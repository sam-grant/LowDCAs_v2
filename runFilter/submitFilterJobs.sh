for file in `ls files/file*`; do
  echo $file
#  return
done | xargs -i --max-procs=24 bash -c ". runFilter.sh {}"
