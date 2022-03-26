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
**Whole page**
1. `ctrl`+`f` forward whole page
2. `ctrl`+`b` backward whole page

**Half page**
1. `ctrl`+`u` up half page
2. `ctrl`+`d` down half page

### Search
1. `/` search forward
2. `?` search backward
3. `n` search next
3. `shift`+`n` search previous

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
2. `esc` and move cursor to where you hope to paste
3. `p` paste it

## Git alias
1. `undo` = `reset --soft HEAD^` reset commit
2. `rmall` = `rm -r --cached` remove track this file everywhere (If you forget to create git ignore file.)
