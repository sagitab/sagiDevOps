#!/bin/bash
if [ "$#" -ne 1 ]; then
  echo "usage: $0 <agr1> "
fi
fileName="$1"
touch "$fileName"
chmod u+x "$fileName"
echo "#!/bin/bash" >>"$fileName"
nano "$fileName"

