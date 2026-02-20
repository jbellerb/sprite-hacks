Source config.tape
Output git-remote-sprite.gif
Output git-remote-sprite.mp4

Sleep 1.0s
Type "less $(which git-remote-sprite)"
Sleep 300ms
Enter
Sleep 1.1s
Type@400ms "jjjjjjjjjjjj"
Sleep 800ms
Type "q"
Sleep 300ms

# Type "sprite create sprite-dev"
Type "sprite console -s stuff-dev"
Enter
Wait /sprite@stuff-dev:~#/
Sleep 500ms
Type "git clone https://github.com/jbellerb/sprite-hacks"
Enter
Wait /sprite@stuff-dev:~#/
Sleep 900ms
Type "ls spri"
Tab
Enter
Sleep 500ms
Type "exit"
Enter

Sleep 1.9s
Type "git clone -o sprite sprite://stuff-dev/sprite-hacks"
Enter
Wait
Sleep 1.0s
Type "ls spri"
Tab
Enter
Sleep 500ms
Type "cd spri"
Tab
Enter
Sleep 1.4s
Type "git checkout -b test-branch"
Enter
Wait
Sleep 800ms
Type "touch test.txt"
Enter
Sleep 200ms
Type "git add ."
Enter
Sleep 1.1s
Type 'git commit -m "add test.txt"'
Enter
Sleep 1.3s
Type "git remote -v"
Enter
Sleep 800ms
Type "git push -u sprite test-branch"
Enter
Wait

Sleep 1.1s
Type "sprite console -s stuff-dev
Enter
Wait /sprite@stuff-dev:~#/
Sleep 700ms
Type "cd spri"
Tab
Sleep 100ms
Enter
Sleep 700ms
Type "git switch tes"
Tab
Sleep 500ms
Enter
Sleep 600ms
Type "git log"
Enter
Sleep 2.3s
Type "q"
Sleep 600ms
Type "exit"
Enter
Sleep 200ms
