# From: http://rubenlaguna.com/wp/2010/08/05/visual-difftool-cygwin-git/
# From: http://gist.github.com/509918
# Helper functions


convert_path () {
    file=$1

    if [ "$file" == '/dev/null' ] || [ ! -e "$file" ]
        then 
           file="/tmp/nulla"
           `echo "">$file`
    fi
    echo `cygpath -w -a	"$file"`
}


set_path_vars () {
	local=$1
	remote=$2
	base=$3
	merged=$4

	echo ========= Cygwin paths =======
	echo "LOCAL   :  $local"
	echo "REMOTE  :  $remote"
	echo "BASE    :  $base"
	echo "MERGED  :  $merged"

	localwinpath=$(convert_path "$local")
	remotewinpath=$(convert_path "$remote")
	basewinpath=$(convert_path "$base")
	mergedwinpath=$(convert_path "$merged")

	echo ========= Win paths =======
	echo "LOCAL   :  $localwinpath"
	echo "REMOTE  :  $remotewinpath"
	echo "BASE    :  $basewinpath"
	echo "MERGED  :  $mergedwinpath"

	caption=`basename "$merged"`
	beyondcompare="C:/Program Files (x86)/Beyond Compare 3/BComp.exe"
#	diffmergewinpath="C:/Program Files/SourceGear/DiffMerge/DiffMerge.exe"
#	winmergewinpath="C:/Program Files/WinMerge/WinMergeU.exe"
#	diffmergewinpath=`cygpath -u C:/Program Files/SourceGear/DiffMerge/DiffMerge.exe`
#	winmergewinpath=`cygpath -u \"C:\Program Files\WinMerge\WinMergeU.exe\"`
}
