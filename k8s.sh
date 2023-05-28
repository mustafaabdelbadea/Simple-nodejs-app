k8s_files=`ls kubernetes/*.yml | sort` 

for file in $k8s_files
    do
        kubectl apply -f $file
    done