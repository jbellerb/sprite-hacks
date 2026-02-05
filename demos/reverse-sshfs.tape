Source config.tape
Output reverse-sshfs.gif
Output reverse-sshfs.mp4

Hide
  Type "cd ~/Documents"
  Enter
  Type "rm -rf sprite-shared"
  Enter
  Type "rm -rf sftp-minimal.sb"
  Enter
  Type "clear"
  Enter
Show

Sleep 1.0s
Type "sprite create"
Enter
Sleep 1.9s
Type "reverse-sshfs"
Enter
Wait /sprite@sprite:~#/
Sleep 1.0s
Type "sudo apt install sshfs"
Enter
Wait /Continue/
Sleep 300ms
Type "y"
Enter
Wait /sprite@sprite:~#/
Sleep 1.8s
Type "mkdir shared"
Enter
Sleep 400ms
Type "exit"
Enter

Sleep 1.1s
Type "mkdir sprite-shared"
Enter
Sleep 400ms
Type "vim sprite"
Tab
Sleep 200ms
Type "hi.txt"
Sleep 100ms
Enter
Sleep 600ms
Type "i"
Sleep 300ms
Type "hello, sprite!!!!!!"
Sleep 1.1s
Escape
Sleep 200ms
Type ":wq"
Sleep 100ms
Enter

Sleep 1.1s
Type "vim sftp-minimal.sb"
Sleep 100ms
Enter
Sleep 800ms
Type "i"
Sleep 500ms
Hide
  Type "(version 1)"
  Enter
  Type "(deny default)"
  Enter
  Type '(allow process-exec* (literal "/usr/libexec/sftp-server"))'
  Enter
  Type '(allow mach-lookup (global-name "com.apple.system.opendirectoryd.libinfo"))'
  Enter
  Type '(allow file-read-metadata (subpath "/"))'
  Enter
  Type '(allow file-read-data (regex #"^/$"))'
  Enter
  Type '(allow file-read-data file-write-data (literal "/dev/null"))'
  Enter
  Enter
  Type '(allow file-read-data file-write-data (subpath "/Users/jae/Documents/sprite-shared"))'
Show
Sleep 6s
Escape
Sleep 200ms
Type ":wq"
Enter

Sleep 1.1s
Type 'socat EXEC:"sandbox-exec -f sftp-minimal.sb /usr/libexec/sftp-server -e" EXEC:"sprite exec -s reverse-sshfs -- sshfs -o passive \:$PWD/sprite-shared shared" &'
Sleep 200ms
Enter

Sleep 2.3s
Type "sprite console -s reverse-sshfs"
Enter
Wait /sprite@sprite:~#/
Sleep 700ms
Type "ls -l shar"
Tab
Sleep 400ms
Enter
Sleep 2.1s
Type "cat shared/hi"
Tab
Sleep 200ms
Enter

Sleep 3s
Type "umount shared"
Sleep 100ms
Enter
Sleep 400ms
Type "exit"
Enter
Sleep 200ms
