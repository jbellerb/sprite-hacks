# sprite-hacks

Scripts and demos from experimenting with Sprites.

## Reverse `sshfs` (MacOS)

Mount a directory on your local filesystem within a Sprite. Uses `socat` to pipe a local `sftp-server` to a remote `sshfs`. Filesystem isolation provided by seatbelt. Should be easy to port to Linux with `unshare`.

![Terminal session demonstrating the reverse sshfs mount. User creates a Sprite named "reverse-sshfs" and installs "sshfs" with apt. On the local machine, user creates a "sprite-shared" directory, writes "hi.txt", writes the "sftp-minimal.sb" seatbelt policy, and runs 'socat EXEC:"sandbox-exec -f sftp-minimal.sb /usr/libexec/sftp-server -e" EXEC:"sprite exec -s reverse-sshfs -- sshfs -o passive \:$PWD/sprite-shared shared" &'. On the Sprite, user prints "hi.txt" with cat.](demos/reverse-sshfs.gif)

## `jj sprite-workspace`

Jujutsu custom alias to sync commits with a Sprite. Script located at [bin/jj-sprite-workspace](bin/jj-sprite-workspace). Requires `jj` and `sprite`.

![Terminal session demonstrating jj-sprite-workspace. User runs "jj sprite-workspace add sprites-go" and accepts a prompt to create the Sprite. The output of "git push" appears. User runs "jj sprite-workspace switch sprites-go-workspace claude". A Claude Code window opens on the Sprite. Claude writes to "text.txt" and creates a Git commit. On exit, the output of "git fetch" appears. User creates a change off the "sprites-go-workspace" bookmark and prints "test.txt" with cat.](demos/jj-sprite-workspace.gif)

Add the alias to your `jj/config.toml`:

```toml
[aliases]
sprite-workspace = ["util", "exec", "--", ".../bin/jj-sprite-workspace"]
```

## `sprite://` Git remotes

Custom [remote helper](https://git-scm.com/docs/gitremote-helpers) to use any Sprite as a Git remote. No setup required, since files are sent directly over `sprite exec`.

![Terminal session demonstrating the Sprite Git remote handler. User runs "less" to show the contents of git-remote-sprite. User connects to a Sprite and clones a Git repository. On the local machine, user runs "git clone -o sprite sprite://stuff-dev/sprite-hacks" to clone the repository that was just created on the Sprite. User creates a new branch, creates the file "test.txt", commits, and pushes the commit to the sprite with "git push -u sprite test-branch". User connects to the sprite again, switches to the test branch, and shows the pushed commit with "git log".](demos/git-remote-sprite.gif)

## Forwarding secrets as in-memory credentials

Forward a credential from the macOS toolchain to a console session in a Sprite. Secret is mounted in a private filesystem namespace and never stored on-disk.

![Terminal session demonstrating Claude Code running on a Sprite with the user's local OAuth credentials. The terminal is in a new tmux session. User creates a Sprite named "fresh-sprite" and "claude auth status" reports that the Sprite is not logged in. On the host, user runs "less" to show the contents of sprite-claude. User runs "sprite-claude fresh-sprite", opening a new console session where Claude is logged in. User prints ~/.claude/.credentials.json with sed to redact the keys. While still logged in, user connects from another tmux window. The credential is in a session-private namespace, so this session's Claude is logged out and ~/.claude/.credentials.json is empty. In the original window, user asks Claude "ping" and Claude answers "pong". User exits the sessions and reconnects. Claude is again logged out.](demos/sprite-claude.gif)

<br />

#### License

<sup>
Copyright (C) jae beller, 2026.
</sup>
<br />
<sup>
Released under the Apache License, Version 2.0. See <a href="LICENSE">LICENSE</a> for more information.
</sup>
