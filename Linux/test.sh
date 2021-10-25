paths=(
	'/etc/shadow' 
	'/etc/passwd'
)
for perm in ${paths[@]}
do
        echo $(ls -la $perm)
done


