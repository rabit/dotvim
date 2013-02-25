
#INSTALL

Use wget to get install script, and execute the script.

        wget -c https://raw.github.com/rabit/dotvim/master/install.sh
        chmod u+x install.sh
        ./install.sh

#REQUREMENTS

* vim must enable ruby support
* [Command-T](https://github.com/wincent/Command-T) need ruby to compile it.
* [ack.vim](https://github.com/mileszs/ack.vim) need [ack](http://betterthangrep.com/), follow this [link](http://betterthangrep.com/install/) to install it.
* [Markdown Preview](https://github.com/mkitt/markdown-preview.vim) need [discount](http://www.pell.portland.or.us/~orc/Code/discount).
* for ubuntu

        $sudo apt-get install vim-nox
        $sudo apt-get install discount
        $sudo apt-get install ack-grep
        $sudo apt-get install ruby1.8-dev (replace 1.8 with whatever version you're running - see ruby -v)

#PLUGINS

* [Vundle](https://github.com/gmarik/vundle): A plugin manager for vim.

* [Nerd Tree](http://www.vim.org/scripts/script.php?script_id=1658): A tree explorer plugin for navigating the filesystem.

  Useful commands:  
    `<F11>` - open directory browser  
    `:Bookmark [name]` - bookmark any directory as name  
    `:NERDTree [name]` - open bookmark name in NERD Tree

* [AutoClose](http://www.vim.org/scripts/script.php?script_id=1849):  Inserts matching bracket, paren, brace or quote.

* [vim-surround](https://github.com/tpope/vim-surround/blob/master/doc/surround.txt): deal with pairs of surroundings.

    * `dsX` - delete surround X
    * `csXY` - change surround X with Y
    * `s/S` in visual mode - wrap selection
    * `ysMovementX` - surround movement with X

    You should REALLY read the docs if you want to use this one

* [matchit](http://www.vim.org/scripts/script.php?script_id=39): extended % matching for HTML, LaTeX, and many other languages. 

* [xmledit](http://www.vim.org/scripts/script.php?script_id=301): XML/HTML tags will be completed automatically.

* [Command-T](https://github.com/wincent/Command-T): open and navigate between files with `cmd-t`.

    * `,t` - find file
    * while at the finder prompt:
      * `Ctrl-Enter` - open file in a new split
      * `Ctrl-v` - open file in a new vertical split
      * `Esc` - cancel

* [SuperTab](http://www.vim.org/scripts/script.php?script_id=1643): Do all your insert-mode completion with Tab.

* [snipMate](http://www.vim.org/scripts/script.php?script_id=2540): TextMate-style snippets for Vim

  `:help snipMate` to see more info.

* [VisIncr](http://www.vim.org/scripts/script.php?script_id=670): Produce increasing/decreasing columns of numbers, dates, or daynames.
  
* [Cute Error Marker](http://www.vim.org/scripts/script.php?script_id=2653): showing error and warning icons on line.
  
   MacVim users need to enable "Use experimental renderer" to see
   graphical icons.

* [OmniCppComplete](http://www.vim.org/scripts/script.php?script_id=1520): C/C++ omni-completion with ctags database.

* [JavaComplete](http://www.vim.org/scripts/script.php?script_id=1785): Java Omni-completion.

* [EasyMotion](https://github.com/Lokaltog/vim-easymotion): An easy way to jump to a word.

  Useful commands:  
    `,,w` forward EasyMotion  
    `,,b` backward EasyMotion  

* [TagBar](http://majutsushi.github.com/tagbar/): browsing the tags of source files ordered by classes.

  Useful commands:  
    `F12` toggles the TagBar  

* [Indent Motion](https://github.com/vim-scripts/indent-motion): Vim motions to the start and end of the current indentation-delimited block.

  Useful commands:  
    `,]` move to the end of the current indentation-delimited block (very useful in Python)  
    `,[` move to the beginning of the current indentation-delimited block (very useful in Python)  

* [PowerLine](https://github.com/Lokaltog/vim-powerline): Powerline is a utility plugin which allows you to create better-looking, more functional vim statuslines.

* [VisIncr](https://github.com/vim-scripts/VisIncr): The visincr plugin facilitates making a column of increasing or decreasing numbers, dates, or daynames.

        Example 1:  
                :I                              :I 2  
                          Use ctrl-V to                   Use ctrl-V to  
              Original    Select, :I          Original    Select, :I 2  
                 8            8                  8            8  
                 8            9                  8            10  
                 8            10                 8            12  
                 8            11                 8            14  
                 8            12                 8            16
        
        Example 2:
                 :I -1                           :I -2  
                          Use ctrl-V to                   Use ctrl-V to  
              Original    Select, :I -1       Original    Select, :I -3  
                 8            8                  8            8  
                 8            7                  8            5  
                 8            6                  8            2  
                 8            5                  8            -1  
                 8            4                  8            -4  

* [Javascript](https://github.com/pangloss/vim-javascript): Vastly improved vim's javascript indentation.

* [Markdown](https://github.com/hallison/vim-markdown): Markdown syntax highlight for Vim editor with snippets support

* [GTK Syntax](https://github.com/vim-scripts/gtk-vim-syntax): Syntax highlighting for GLib, Gtk+, Xlib, Gimp, Gnome, and more.

* [NERD Commenter](https://github.com/scrooloose/nerdcommenter): Vim plugin for intensely orgasmic commenting.

  Useful commands:  
    `[count],cc` Comment out the current line or text selected in visual mode.  
    `[count],cu` Uncomments the selected line(s).  

* [ColorV](https://github.com/Rykka/ColorV): A vim plugin with which you can easily handling with colors. 

        For example:

        When editing text like '#9370D8' or 'LightSlateGray' or 'rgb(216,112,147)'
        Press '<leader>ce'(':ColorVEdit') in 'LightSlateGray',
        this will open ColorV window showing the text's color.
        And after picking a color and close the window,
        The text will be changed to your picked color.
 
* [ack.vim](https://github.com/mileszs/ack.vim): Vim plugin for the Perl module / CLI script [ack](http://betterthangrep.com/)

    This plugin is a front for the Perl module App::Ack. Ack can be used as a replacement for 99% of the uses of grep.

    * `:Ack [options] {pattern} [{directory}]` - grep for the pattern in side directory and open result in a QuickFix window
    * `:Ack --ruby ...` - search only ruby files.
    * `:h Ack` - more help about Ack

* [Markdown Preview](https://github.com/mkitt/markdown-preview.vim): Preview markdown files in the browser from vim.

  Useful commands:  
    `,md` Generate a temporary HTML files.  
    `,mc` Clear out all temporary files.  
    `,mv` Call a browser to preview the temporary HTML files.

#Misc

The following is a list of commands and key bindings that I personally find interesting
stored for easy refreshing my memory of them. there is no much 'system' to it, just
randomly chosen bits of vim goodness.


* `ga` print ascii value of character under the cursor
* `g#` like "#", but without using "\<" and "\>"
* `g<` display previous command output
* `zt` scroll cursor line to top
* `zz` scroll cursor line to center
* `zb` scroll cursor line to bottom
* `CTRL-W x` exchange current window with n-th window (or next if no count given)
* `gv` reselect last selection
* `gt` next tab
* `gT` prev tab
* `ci` change inside delimiters
* `di` delete inside delimiters
* `@@` execute last macro
* `"xyy` copy line into `x` register (replace x with any other)
* `<C-R>x` while in insert mote will paste content of register x (replace x with any other)
* `"xp` paste from register x
* `:reg` Display the contents of all numbered and named registers.



