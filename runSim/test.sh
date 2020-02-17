# Define output path
#path=/gm2/app/users/sgrant/Offline/LowDCAs/JobOutput/

#returnPath=/gm2/app/users/sgrant/Offline/LowDCAs/

# If STOP file is created, pause job
# if [ -f STOP ]; then 
#   echo "STOP file found. Not processing"
#   return
#   exit
# fi

# Label piped input file
inFile=$1
ls -ltr $inFile

