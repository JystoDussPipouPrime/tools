# tools

personal tools that cost me time now in order to save time later.

<a name="table-of-contents"></a>
# ToC

1. [Name & Description](#name-description)
2. [quick guide to implement scripts  🌱](#guide)
   - [/usr/local/bin](#guide-usr-local-bin)
   - [~/.bashrc](#guide-shell-config)
3. [TODO](#todo)



<a name="name-description"></a>
# Name & Description
| Name              | Description                                                                                |
| -------------     |:------------------------------------------------------------------------------------------:|
| fclean_all        | Go through each folder recursively, find a Makefile, and try running `make fclean`         |
| fclean_alldocker  | Removes all Docker resources on the machine (images,networks...), but keeps local volumes. |
| ❌fvscode_all     | Go through each folder recursively, and `rm -rf .vscode`                                   |
| fgit              | Repair current repo when you run `error: object file .git/objects/*/* is empty`            |
| fdiscord          | Install Discord via `wget` .deb (because i hate snap)                                      |
| ftetrio           | Install Tetr.io via `wget` .deb (+ config.ttc/4w.ttp inside)                               |
| fprotonVPN        | Install ProtonVPN via `wget` .deb                                                          |
| fanydesk          | Install AnyDesk via `wget` .deb OR official repo                                           |
| fue5              | Launch Unreal Engine 5 from terminal                                                       |
| ❌fobs            | Install OBS correctly on Ubuntu                                                            |
| ❌fdocker         | Install `docker` or `docker compose` (need `sudo usermod -aG docker $USER`)                |

<a name="guide"></a>
# quick guide to implement scripts 🌱

| Aspect                        | `/usr/local/bin`           |(`.bashrc`, `.zshrc`, …)    |
|-------------------------------|----------------------------|----------------------------|
| **All users & shells**        | ✅ (no restart needed)     | ❌ (sometimes desired)     |
| **Unix/Linux standard**       | ✅ ($PATH)                 | ❌ (sometimes desired)     |
| **Root privileges**           | ❌ (sudo cp)               | ✅ (handled by the shell)  |
| **Risk of conflicts**         | ❌ (override existing cmd) | ✅ (requires clean .rc)    |

<a name="guide-usr-local-bin"></a>
## `/usr/local/bin`

Make the script executable and move it to `/usr/local/bin`:

```bash
    chmod +x ./script_name
    sudo cp ./script_name /usr/local/bin
```
Now you can run it directly:
```
    script_name
```
<a name="guide-shell-config"></a>
## `~/.bashrc` (User Shell Configuration)

This approach makes the script available only for a specific user and shell (e.g., Bash).
A common practice is to create a personal ~/.bin folder to store custom scripts:

```
    chmod +x ./script_name
    mkdir -p ~/.bin
    mv ./script_name ~/.bin
```
Edit your shell configuration file:
```
    vim ~/.bashrc
```
Inside, you may already find some default aliases like `alias ll='ls -alF'`, add your own alias pointing to the script:
```
    alias cmd_name='/home/your_user/.bin/script_name'
```
Reload your shell configuration file to apply changes with `source ~/.bashrc` Or fully reload your shell with `exec bash`

Now you can run it directly:
```
    script_name
```

<a name="todo"></a>
## TODO
- [ ] fvscode_all need to add protection on the /home/user/.vscode one
- [ ] fue5 flexible path
- [x] quick guide to implement /usr/local/bin or .bashrc
- [ ] revamp names because they don't make sense
- [ ] ftetrio $ARG for creating desired .ttc / .ttp
- [ ] fobs need logic switch pulseaudio/pipewire
- [ ] fobs patch install pipewire
- [ ] fdocker I don’t remember if it worked, I think it was broken back then.
