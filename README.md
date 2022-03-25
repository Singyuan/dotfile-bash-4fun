# Configuration for Bash (Just a note)

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

## A note of vim

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#comment">Comment</a></li>
    <li><a href="#scroll">Scroll</a></li>
    <li><a href="#search">Search</a></li>
    <li><a href="#undo-redo">Undo & redo</a></li>
    <li><a href="#move-cursor">References</a></li>
    <li><a href="#indent-Unindent">References</a></li>
    <li><a href="#yank-paste">Yank & Paste</a></li>
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
3. `n` search forward
3. `shift`+`n` search backward

### Undo & Redo
1. `u` undo
2. `ctrl`+`r` redo

### Move cursor
1. `0` 0-th 'word' of line
2. `$` last word of line _Don't take money too seriously!_
3. `gg` move to the first line
4. `shift`+`g` move to the last line

### Indent & Unindent
**Indent**
1. `shift`+`v` choose 'lines' you hope to indent
2. `>` indent a 'tab' you set

**Unindent**
1. `shift`+`v` choose 'lines' you hope to indent
2. `<` unindent a 'tab' you set

### Yank & Paste
1. `v` select which you hope to copy
2. `esc` and move cursor to where you hope to paste
3. `p` paste it
