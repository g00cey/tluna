#!env bash
base_dir=$(cd $(dirname $0); pwd)
echo '名前を入力してください'
read name
file_name="${base_dir}/user/${name}-pcnicinfo.txt"
echo $name > $file_name
cat "${base_dir}/hardware.txt" >> $file_name
/usr/sbin/system_profiler SPHardwareDataType SPSoftwareDataType >> $file_name
ifconfig >> $file_name
vim $file_name
