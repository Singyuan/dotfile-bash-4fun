# Configuration for Bash (Just a Note)

## Structure
```
${HOME}
├── .bashrc
├── .tmux.conf
├── .vimrc
└── .config
        ├── sh
        │     ├── .aliases
        │     ├── .bashrc
        │     └── .source
        ├── tmux
        │     └── .tmux.conf
        └── vim
              └── .vimrc
```

## A note of tmux

<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#session">Session</a></li>
    <li><a href="#window">Window</a></li>
    <li><a href="#pane">Pane</a></li>
  </ol>
</details>

### Session
1. `opt`+`s` select session by list
2. `opt`+`shift`+`q` quit this session
3. `opt`+`shift`+`n` name this session
3. `opt`+`d` detach this session

### Window
1. `opt`+`c` create new window
2. `opt`+`q` quit this window
3. `opt`+`number` select particular window

### Pane
1. `opt`+`\` split window horizontal
2. `opt`+`enter` split window vertical
3. `opt`+`x` close this pane
4. `opt`+`h` (`j`, `k`, `l`) move to left (up, down, right)


## A note of vim

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#comment">Comment</a></li>
    <li><a href="#scroll">Scroll</a></li>
    <li><a href="#search">Search</a></li>
    <li><a href="#undo--redo">Undo & Redo</a></li>
    <li><a href="#move-cursor">Move the cursor</a></li>
    <li><a href="#indent--unindent">Indent & Unindent</a></li>
    <li><a href="#yank--paste">Yank & Paste</a></li>
  </ol>
</details>

### Comment
All the following commands begin at **Command Mode** and end at **Command Mode**.

**Multi lines comment**
1. `ctrl`+`v` choose 'first rectangle of lines' you hope to comment
2. `shift`+`i` insert comment symbols
3. `esc`

**Multi lines uncomment**
1. `ctrl`+`v` select 'a rectangle block' where you hope to uncomment
2. `d` delete comment symbols
3. `esc`

### Scroll
**Entire page**
1. `ctrl`+`f` forward entire page
2. `ctrl`+`b` backward entire page

**Half page**
1. `ctrl`+`u` up half page
2. `ctrl`+`d` down half page

### Search
1. `/` search forward
2. `?` search backward
3. `n` search next
4. `shift`+`n` search previous
5.  `:noh` no highlight

### Undo & Redo
1. `u` undo
2. `ctrl`+`r` redo

### Move the cursor
1. `0` 0-th 'word' of this line
2. `$` last word of this line _Don't take money too seriously!_
3. `gg` go to the first line
4. `shift`+`g` go to the last line
5. `:number` jump to particular line

### Indent & Unindent
**Indent**
1. `shift`+`v` choose 'lines' you hope to indent
2. `>` indent a 'tab' you set

**Unindent**
1. `shift`+`v` choose 'lines' you hope to indent
2. `<` unindent a 'tab' you set

### Copy & Paste
1. `v` select which you hope to yank
2. `y` yank
3. `p` paste it

## A note of Git alias
1. `undo` = `reset --soft HEAD^` reset commit
2. `rmall` = `rm -r --cached` remove track this file everywhere (If you forget to create git ignore file.)

## A note of Linux command

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#scroll-tmux">Scroll tmux</a></li>
    <li><a href="#remote-copy"> Remote copy</a></li>
    <li><a href="#create-empty-file">Create empty file</a></li>
    <li><a href="#copy">Copy</a></li>
    <li><a href="#move">Move</a></li>
    <li><a href="#search-dns">Search DNS</a></li>
    <li><a href="#ping">Ping</a></li>
  </ol>
</details>

### Scroll tmux
1. `ctrl`+`b` and `[`
2. scroll like vim mode
3. `q` quit

### Remote copy
**from remote to local**
1. go to your folder
2. `scp myuser@140.112.51.1:/path/file2 .`

**from local to remote**
1. go to your file
2. `scp file1 myuser@140.112.51.1:/path/folder`

### Create empty file
* `touch empty.txt` create one file
* `touch empty{1..10}.txt` create lots of files

### Copy
* `cp -r` copy folder
* `cp -i` ask before overwrite
* `cp *` copy all files ignore folder
* `cp -r !(ignorefile|ignorefoler)`  copy except ignorefile and ignorefoler

**copy files to subfolder**
cp -r !(subfoler) ./subfolder

### Move
* `mv -f` force to overwrite
* `mv *` move all files ignore folder
* `mv !(ignorefile|ignorefoler)`  move except ignorefile and ignorefoler

**rename**
`mv oldnmae newname`

### Search DNS
`nslookup`

### Ping
* google DNS `ping 8.8.8.8`
* HiNet DNS `ping 168.95.1.1`

### Echo
`echo "alias python3=/usr/local/bin/python3.x" >> ~/.bashrc`


## Miniconda
```
miniconda3
├── include
├── envs
├── lib
│     └── python3.9
│          └── site-packages
└── bin
      ├── activate
      ├── pip
      ├── python
      └── python3 -> /usr/local/bin/python3.x
```
* `echo "alias python3=/usr/local/bin/python3.x" >> ~/.bashrc`

### Create a virtual environment
1. `conda create -n [name] python=3.9`
2. `conda activate [name]`
3. `conda deactivate`

### Delete a virtual environment
1. `conda env remove -n [name]`

### List
`conda env list`

## Remote
Please refer to this [websit](https://code.visualstudio.com/docs/remote/ssh).
