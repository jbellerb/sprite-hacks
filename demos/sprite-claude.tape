Source demos/config.tape
Output sprite-claude.gif
Output sprite-claude.mp4

Hide
  Type "tmux kill-server"
  Enter
  Type "tmux"
  Enter
  Ctrl+B
  Type ":set -g status-style bg=white,fg=black"
  Enter
  Ctrl+B
  Type ':set -g status-left " "'
  Enter
  Ctrl+B
  Type ':set -g status-right ""'
  Enter
Show

Sleep 1.0s
Type "sprite create"
Enter
Sleep 1.9s
Type "fresh-sprite"
Enter
Wait /sprite@fresh-sprite:~#/
Sleep 1.1s
Type "claude auth status"
Enter
Sleep 2.8s
Type "exit"
Enter

Sleep 900ms
Type "less $(which sprite-claude)"
Enter
Sleep 1.4s
PageDown
Sleep 1.4s
PageDown
Sleep 1.4s
PageDown
Sleep 1.4s
PageDown
Sleep 1.7s
Type "q"
Sleep 300ms

Type "sprite-claude fresh-sprite"
Enter
Wait /sprite@fresh-sprite:~#/
Sleep 800ms
Type "claude auth status"
Enter
Sleep 1.3s
Type `sed -E 's/(sk-ant-)[^"]*/\1[REDACTED]/g' ~/.claude/.credentials.json`
Enter
Sleep 2.1s

Ctrl+B
Type ":new-window"
Sleep 400ms
Enter
Sleep 700ms
Type "sprite c -s fresh-sprite"
Enter
Wait /sprite@fresh-sprite:~#/
Sleep 1.3s
Type "The credential is in a session-private namespace"
Sleep 1.1s
Ctrl+C
Sleep 300ms
Type "claude auth status"
Enter
Sleep 800ms
Type "cat ~/.claude/.credentials.json"
Enter
Sleep 1.2s
Ctrl+B
Type ":"
Sleep 100ms
Type "killw"
Sleep 300ms
Enter
Sleep 300ms
Type "claude"
Enter
Sleep 900ms
Down
Sleep 100ms
Enter
Sleep 400ms
Down
Sleep 100ms
Enter
Sleep 1.2s
Type "ping"
Sleep 200ms
Enter
Sleep 4.2s
Type "/exit"
Enter
Sleep 800ms
Type "exit"
Enter
Sleep 1.1s

Type "sprite c -s fresh-sprite"
Enter
Wait /sprite@fresh-sprite:~#/
Sleep 500ms
Type "claude auth status"
Enter
Sleep 1.5s
Type "exit"
Enter
Sleep 700ms
