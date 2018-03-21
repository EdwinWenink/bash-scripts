n=$1
path=$recent
for ((i=1; i <= n; i++))
do
  path=${path%/..}
done
cd $path
export recent=$path
