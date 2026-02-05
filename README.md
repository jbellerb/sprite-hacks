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

<br />

#### License

<sup>
Copyright (C) jae beller, 2026.
</sup>
<br />
<sup>
Released under the Apache License, Version 2.0. See <a href="LICENSE">LICENSE</a> for more information.
</sup>
