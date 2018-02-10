#  ---------------------------------------------------------------------------
#  						WELCOME TO OHGODABASH_PROFILE
#  ---------------------------------------------------------------------------

#   --------------------------------------------------------------------------
#   1.  Environment Variables
#   --------------------------------------------------------------------------
	
#		Show Your Working Directory In A Tab
#	--------------------------------------------------------------------------
	export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'   

#   	Change Your Terminal Prompt
#   --------------------------------------------------------------------------
    export PS1="OhGodATerminal ||| "

#   	Set Your Default Paths
#   --------------------------------------------------------------------------
    export PATH="$PATH:/usr/local/bin/"
    export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

#   ---------------------------------------------------------------------------
#   2.  Aliases
#   ---------------------------------------------------------------------------

	alias d="cd ~/Documents/Dropbox"			# d:			Change to Dropbox
	alias dl="cd ~/Downloads"					# dl:			Change to Downloads
	alias dt="cd ~/Desktop"						# dt:			Change to Desktop
	alias p="cd ~/projects"						# p:			Change to ~projects

	alias restartdock='killall Dock'    		# Restart dock
	alias lsd='ll | grep "^d"'         			# Preferred 'ls' implementation (only directories)
	alias cp='cp -iv'                           # Preferred 'cp' implementation
	alias mv='mv -iv'                           # Preferred 'mv' implementation
	alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
	alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
	alias less='less -FSRXc'                    # Preferred 'less' implementation
	alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
	alias ..='cd ../'                           # Go back 1 directory level
	alias ...='cd ../../'                       # Go back 2 directory levels
	alias .3='cd ../../../'                     # Go back 3 directory levels
	alias .4='cd ../../../../'                  # Go back 4 directory levels
	alias .5='cd ../../../../../'               # Go back 5 directory levels
	alias .6='cd ../../../../../../'            # Go back 6 directory levels
	alias edit='sublime'                        # edit:         Opens any file in Sublime3.
	alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
	alias ~="cd ~"                              # ~:            Go Home
	alias c='clear'                             # c:            Clear terminal display
	alias which='type -all'                     # which:        Find executables
	alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
	alias show_options='shopt'                  # Show_options: display bash options settings
	alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
	alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
	mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
	trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
	ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
	alias dump='tee ~/Desktop/terminalOut.txt'  # dump:         Pipe content to file on MacOS Desktop
	alias week='date +%V'						# Gets the  week number. 

#   ---------------------------------------------------------------------------
#   3.  File and Folder Management
#   ---------------------------------------------------------------------------

#   	extract:  Extract most know archives with one command
#   ---------------------------------------------------------------------------

    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }

#   ---------------------------------------------------------------------------
#   4.  Searching
#   ---------------------------------------------------------------------------

	alias qfind="find . -name "                 # qfind:    Quickly search for file
	ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
	ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
	ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

#   ---------------------------------------------------------------------------
# 		Search Google Images || Usage: images <foo>
#   ---------------------------------------------------------------------------

	images() {
		search=""
		for term in $*; do
			search="$search%20$term"
		done
		open "http://www.google.com/search?tbm=isch&hl=en&source=hp&biw=1366&bih=679&q=$search"
	}

#   ---------------------------------------------------------------------------
#		Search YouTube || Usage: videos <foo>
#   ---------------------------------------------------------------------------

	videos() {
    	search=""
    	for term in $*; do
        	search="$search%20$term"
    	done
    	open "http://www.youtube.com/results?search_query=$search"
    }

#   ---------------------------------------------------------------------------
#   	Search Wikipedia | Usage: wiki <foo>
#   ---------------------------------------------------------------------------

	wiki() {
	    search=""
	    for term in $*; do
	        search="$search%20$term"
	    done
	    xdg-open "http://en.wikipedia.org/w/index.php?search=$search"
	}

#   ---------------------------------------------------------------------------
# 		Amazon DE Search Function  | Usage: AmazonDE <foo>
#   ---------------------------------------------------------------------------

	amazonDE() {
	    search=""
	    for term in $*; do
	        search="$search%20$term"
	    done
	    open "http://www.amazon.de/s/ref=nb_sb_noss_1?url=search-alias%3Daps&field-keywords=$search&x=0&y=0"
	}

#   ---------------------------------------------------------------------------
#		Search Files and Directories | Usage: search <file/dirs>
#   ---------------------------------------------------------------------------

	search() { 
	find . -iname "*$@*" | less; 
	}

#   ---------------------------------------------------------------------------
#   5.  Process Management
#   ---------------------------------------------------------------------------


#   ---------------------------
#   6.  Networking
#   ---------------------------

	alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
	alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
	alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
	alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
	alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
	alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
	alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
	alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
	alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
	alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }


#   ---------------------------------------
#   7.  System Operations
#   ---------------------------------------

#	Get MacOS Software Updates; Update Installed Ruby Gems, Homebrew, npm; Clean Installed Packages
#   ---------------------------------------------------------------------------
	alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

#   ---------------------------------------------------------------------------

	alias mountReadWrite='/sbin/mount -uw /'    # mountReadWrite:   For use when booted into single-user

#   cleanupDS:  Recursively delete .DS_Store files
#   -------------------------------------------------------------------
    alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"

#   finderShowHidden:   Show hidden files in Finder
#   finderHideHidden:   Hide hidden files in Finder
#   -------------------------------------------------------------------
    alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
    alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'

#   cleanupLS:  Clean up LaunchServices to remove duplicates in the "Open With" menu
#   -----------------------------------------------------------------------------------
    alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
#   ---------------------------------------------------------------------------
# 	afk: 		Lock your screen
#   ---------------------------------------------------------------------------
   	alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"


#   ---------------------------------------
#   9.  Reminders & Notes
#   ---------------------------------------

#	to take a portion of the screen and save it to clipboard
#	---------------------------------------------------------
#	command + control + shift + 4

#   remove_disk: spin down unneeded disk
#   ---------------------------------------
#   diskutil eject /dev/disk1s3

#   to change the password on an encrypted disk image:
#   ---------------------------------------
#   hdiutil chpass /path/to/the/diskimage

#   to mount a read-only disk image as read-write:
#   ---------------------------------------
#   hdiutil attach example.dmg -shadow /tmp/example.shadow -noverify

#   mounting a removable drive (of type msdos or hfs)
#   ---------------------------------------
#   mkdir /Volumes/Foo
#   ls /dev/disk*   to find out the device to use in the mount command)
#   mount -t msdos /dev/disk1s1 /Volumes/Foo
#   mount -t hfs /dev/disk1s1 /Volumes/Foo

#   to create a file of a given size: /usr/sbin/mkfile or /usr/bin/hdiutil
#   ---------------------------------------
#   e.g.: mkfile 10m 10MB.dat
#   e.g.: hdiutil create -size 10m 10MB.dmg
#   the above create files that are almost all zeros - if random bytes are desired
#   then use: ~/Dev/Perl/randBytes 1048576 > 10MB.dat