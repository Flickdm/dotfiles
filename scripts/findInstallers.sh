#Finds all the installers

set -e

cd "$(dirname $0)"/..

# find the installers and run them iteratively
find . -name install.sh | while read installer ; 
    echo "${installer}"
    do source "${installer}" 
    echo "${installer}";
done
