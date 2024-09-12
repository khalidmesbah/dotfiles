# My dotfiles

This directory contains the dotfiles for my system

<div>
    <pre><font color="#26A269">~:</font>neofetch
    <font color="#2AA1B3"><b>                   -`</b></font>                    <font color="#2AA1B3"><b>kmsf</b></font>@<font color="#2AA1B3"><b>archlinux</b></font> 
    <font color="#2AA1B3"><b>                  .o+`</b></font>                   -------------- 
    <font color="#2AA1B3"><b>                 `ooo/</b></font>                   <font color="#2AA1B3"><b>OS</b></font>: Arch Linux x86_64 
    <font color="#2AA1B3"><b>                `+oooo:</b></font>                  <font color="#2AA1B3"><b>Host</b></font>: HP Compaq Pro 6300 SFF 
    <font color="#2AA1B3"><b>               `+oooooo:</b></font>                 <font color="#2AA1B3"><b>Kernel</b></font>: 6.6.46-1-lts 
    <font color="#2AA1B3"><b>               -+oooooo+:</b></font>                <font color="#2AA1B3"><b>Uptime</b></font>: 23 hours, 6 mins 
    <font color="#2AA1B3"><b>             `/:-:++oooo+:</b></font>               <font color="#2AA1B3"><b>Packages</b></font>: 1014 (pacman), 22 (flatpak) 
    <font color="#2AA1B3"><b>            `/++++/+++++++:</b></font>              <font color="#2AA1B3"><b>Shell</b></font>: zsh 5.9 
    <font color="#2AA1B3"><b>           `/++++++++++++++:</b></font>             <font color="#2AA1B3"><b>Resolution</b></font>: 1680x1050 
    <font color="#2AA1B3"><b>          `/+++ooooooooooooo/`</b></font>           <font color="#2AA1B3"><b>WM</b></font>: i3 
    <font color="#2AA1B3"><b>         ./ooosssso++osssssso+`</b></font>          <font color="#2AA1B3"><b>Theme</b></font>: Adwaita-dark [GTK2/3] 
    <font color="#2AA1B3"><b>        .oossssso-````/ossssss+`</b></font>         <font color="#2AA1B3"><b>Icons</b></font>: Adwaita [GTK2/3] 
    <font color="#2AA1B3"><b>       -osssssso.      :ssssssso.</b></font>        <font color="#2AA1B3"><b>Terminal</b></font>: gnome-terminal 
    <font color="#2AA1B3"><b>      :osssssss/        osssso+++.</b></font>       <font color="#2AA1B3"><b>CPU</b></font>: Intel i5-3470 (4) @ 3.600GHz 
    <font color="#2AA1B3"><b>     /ossssssss/        +ssssooo/-</b></font>       <font color="#2AA1B3"><b>GPU</b></font>: Intel HD Graphics 
    <font color="#2AA1B3"><b>   `/ossssso+/:-        -:/+osssso+-</b></font>     <font color="#2AA1B3"><b>Memory</b></font>: 2420MiB / 7819MiB 
    <font color="#2AA1B3"><b>  `+sso+:-`                 `.-/+oso:</b></font>
    <font color="#2AA1B3"><b> `++:.                           `-/+/</b></font>   <span style="background-color:#171421"><font color="#171421">   </font></span><span style="background-color:#C01C28"><font color="#C01C28">   </font></span><span style="background-color:#26A269"><font color="#26A269">   </font></span><span style="background-color:#A2734C"><font color="#A2734C">   </font></span><span style="background-color:#12488B"><font color="#12488B">   </font></span><span style="background-color:#A347BA"><font color="#A347BA">   </font></span><span style="background-color:#2AA1B3"><font color="#2AA1B3">   </font></span><span style="background-color:#D0CFCC"><font color="#D0CFCC">   </font></span>
    <font color="#2AA1B3"><b> .`                                 `/</b></font>   <span style="background-color:#5E5C64"><font color="#5E5C64">   </font></span><span style="background-color:#F66151"><font color="#F66151">   </font></span><span style="background-color:#33D17A"><font color="#33D17A">   </font></span><span style="background-color:#E9AD0C"><font color="#E9AD0C">   </font></span><span style="background-color:#2A7BDE"><font color="#2A7BDE">   </font></span><span style="background-color:#C061CB"><font color="#C061CB">   </font></span><span style="background-color:#33C7DE"><font color="#33C7DE">   </font></span><span style="background-color:#FFFFFF"><font color="#FFFFFF">   </font></span>
    </pre>
</div>

## Requirements

Ensure you have the following installed on your system

### Git

```
pacman -S git
```

### Stow

```
pacman -S stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/khalidmesbah/dotfiles.git
$ cd dotfiles
```

Then use GNU stow to create symlinks

```
$ stow bash
$ stow zsh
$ stow nvim
$ stow <other dotfiles>
```
