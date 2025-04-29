function ,upload --wraps='rclone copy' --description 'Upload files to jaromino.com'
    set file (basename "$argv")
    set file (string escape --style=url "$file")
    rclone copy "$argv" Jaromino:/home/public/jaromino.com/Files/ -P --ignore-existing
    or return $status
    
    set url (printf "https://jaromino.com/Files/%s" "$file")
    echo "$url" | pbcopy
    printf "%s\n" "$url"
end
