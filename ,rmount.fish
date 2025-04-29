function ,rmount --wraps='rclone mount' --description 'mounts the given rclone remote (plus path) at the given name in the ~/Remotes/ folder'
    mkdir -p "$HOME/Remote/$argv[2]"
    rclone mount --daemon --vfs-cache-mode=full --vfs-fast-fingerprint --volname "$argv[2]" "$argv[1]" "$HOME/Remote/$argv[2]"
end
