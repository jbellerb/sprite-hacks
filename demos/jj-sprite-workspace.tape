Source config.tape
Output jj-sprite-workspace.gif

Hide
  Type "rm -rf sprites-go"
  Enter
  Type "jj git clone git@github.com:superfly/sprites-go.git"
  Enter
  Wait@30s
  Type "clear"
  Enter
Show

Sleep 1.0s
Type "cd sprite"
Tab
Sleep 300ms
Enter
Sleep 1.1s
Type "jj log"
Enter

Sleep 1.5s
Type "jj sprite-workspace --help"
Enter
Sleep 2.1s
Type "jj sprite-workspace add sprites-go"
Sleep 300ms
Enter
Wait /\(y/
Sleep 1.3s
Type "y"
Wait

Sleep 2.3s
Type "jj sprite-workspace switch sprites-go-workspace claude"
Hide
  # Copy Claude config with:
  # ```sh
  # cat ~/.claude.json | sprite exec -s sprites-go sh -c 'cat > .claude.json'
  # cat ~/.claude/credentials.json | sprite exec -s sprites-go sh -c 'cat > .claude/credentials.json'
  # ```
  Sleep 20s 
Show
Sleep 100ms
Enter
Wait+Screen /shift\+Tab/
Sleep 1.2s
Type "i'm in a workspace right now."
Sleep 300ms
Type ' write a short poem to "test.txt".
Sleep 300ms
Type " after that, create a commit."
Sleep 1.1s
Enter
Wait+Screen@60s /Done/
Sleep 3s
Type "/exit"
Sleep 500ms
Enter
Wait

Sleep 1.7s
Type "jj log"
Enter
Sleep 2.8s
Type "jj new sprites-go-workspace"
Tab
Sleep 200ms
Enter
Sleep 1.4s
Type "cat test.txt"
Enter
Sleep 2.9s
