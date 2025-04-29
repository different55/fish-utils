function ,usage --wraps=du --description 'get disk usage of current working directory'
  argparse 'a/all' 'h/help' -- $argv 
  if set -ql _flag_h
    echo "Usage: ,usage [-h | --help] [-a | -all] [directory]"
    echo " -h Print this help"
    echo " -a Scan all files and folders (including hidden ones)"
    echo ""
    echo "If no directory is provided, the current directory is assumed"
    return
  end

  set path "."
  if test -n "$argv"
    set path "$argv"
  end
  
  set paths "$path"/*

  if set -ql _flag_a
    set -a paths "$path"/.*
  end
  
  du -hs $paths | sort -h
        
end
