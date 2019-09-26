POWERLEVEL9K_MODE='nerdfont-complete'

# Separators
# https://github.com/ryanoasis/powerline-extra-symbols
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\ue0b4%f' #round
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\ue0c0%f' #flames
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\ue0c6%f' #cubes
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\ue0c8%f' #electric

# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\ue0cc%f'
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\ue0c0%f'
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='\ue0c0%f'
 # Separators DEFAULT
#  POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b0'
#  POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\ue0b1'
#  POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b2'
#  POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\ue0b7'

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"

POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="249"
POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%I:%M  \UF133  %m.%d.%y}"

POWERLEVEL9K_RVM_BACKGROUND="black"
POWERLEVEL9K_RVM_FOREGROUND="249"
POWERLEVEL9K_RVM_VISUAL_IDENTIFIER_COLOR="red"

POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='white'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"

POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='black'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='blue'

POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%f"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%f "

POWERLEVEL9K_CUSTOM_BATTERY_STATUS="prompt_zsh_battery_level"
POWERLEVEL9K_CUSTOM_BATTERY_STATUS_BACKGROUND="black"

POWERLEVEL9K_CUSTOM_INTERNET_SIGNAL="prompt_zsh_internet_signal"
POWERLEVEL9K_CUSTOM_INTERNET_SIGNAL_BACKGROUND="black"

POWERLEVEL9K_RAM_BACKGROUND="black"
POWERLEVEL9K_RAM_FOREGROUND="green"

POWERLEVEL9K_LOAD_WHICH="1"
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="black"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="green"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="green"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="green"
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"


# dir
# POWERLEVEL9K_SHORTEN_DELIMITER=''
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=7
# POWERLEVEL9K_SHORTEN_STRATEGY='truncate_to_first_and_last'

# POWERLEVEL9K_ETC_ICON=''
# POWERLEVEL9K_FOLDER_ICON=''
# POWERLEVEL9K_HOME_ICON=''
# POWERLEVEL9K_HOME_SUB_ICON=''

POWERLEVEL9K_DIR_ETC_BACKGROUND='deepskyblue4'
POWERLEVEL9K_DIR_ETC_FOREGROUND='red3'
POWERLEVEL9K_DIR_HOME_BACKGROUND='darkgreen'
POWERLEVEL9K_DIR_HOME_FOREGROUND='darkgrey'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='deepskyblue4'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='darkgrey'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='springgreen4'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='grey'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
    zsh_showStatus newline
    happy_symbol context custom_battery_status_joined custom_internet_signal ram load ssh root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time background_jobs status)
HIST_STAMPS="mm/dd/yyyy"
DISABLE_UPDATE_PROMPT=true