#!/bin/bash

# Color definitions (taken from Color Bash Prompt HowTo). 
# Some colors might look different of some terminals. 
# For example, I see 'Bold Red' as 'orange' on my screen, 
# hence the 'Green' 'BRed' 'Red' sequence I often use in my prompt. 


# Normal Colors 
export Black='\e[0;30m'        # Black 
export Red='\e[0;31m'          # Red 
export Green='\e[0;32m'        # Green 
export Yellow='\e[0;33m'       # Yellow 
export Blue='\e[0;34m'         # Blue 
export Purple='\e[0;35m'       # Purple 
export Cyan='\e[0;36m'         # Cyan 
export White='\e[0;37m'        # White 
export Orange='\e[0;38;5;208m' # Orange

# Bold 
export BBlack='\e[1;30m'       # Black 
export BRed='\e[1;31m'         # Red 
export BGreen='\e[1;32m'       # Green 
export BYellow='\e[1;33m'      # Yellow 
export BBlue='\e[1;34m'        # Blue 
export BPurple='\e[1;35m'      # Purple 
export BCyan='\e[1;36m'        # Cyan 
export BWhite='\e[1;37m'       # White 
export BOrange='\e[1;38;5;208m' # Orange

# Background 
export On_Black='\e[40m'       # Black 
export On_Red='\e[41m'         # Red 
export On_Green='\e[42m'       # Green 
export On_Yellow='\e[43m'      # Yellow 
export On_Blue='\e[44m'        # Blue 
export On_Purple='\e[45m'      # Purple 
export On_Cyan='\e[46m'        # Cyan 
export On_White='\e[47m'       # White 

export NC='\e[m'               # Color Reset 

