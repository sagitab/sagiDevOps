read -p "Enter massage: " msg;
read -p "Enter how many times: " range;
for i in $(seq 1 $range)
do
  echo "$msg" >> msg.txt
done
cat msg.txt;


