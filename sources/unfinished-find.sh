# ff (Find File) functions
_track_files() {
  FFOUND_PWD=${PWD}
  FFOUND=()
  while read -r data; do
    eval FFOUND+=($(echo ${data} | sed -e 's/.*/"&"/'))
  done
  print_found
}

myfind() {
  _track_files < <(find -L "$PWD"/ -iname "*$2*" -type "$1")
}

lm() {
  _track_files < <(git ls-files --modified)
}

_output_index_to_stdout() {
  # -t 1 checks we are being piped or outputing to stdout
  # we do not output the index if we are being piped
  if [ -t 1 ]; then printf "% 4d " $1; fi
}

print_found() {
  local length=${#FFOUND[*]}
  local index=1
  while [ "$index" -le "$length" ]; do
    _output_index_to_stdout $index
    fn $index
    ((index++))
  done
}

# if the last arg is a number, try to expand
# to a file in file list (result from ff)
# used in VCS aliases
_expand_last_arg_if_number() {
    ARGS=($@)
    local pos_of_last_argument=$(expr ${#ARGS[@]} - 1)
    local last_argument=${ARGS[${pos_of_last_argument}]}

    if ! echo $last_argument | grep -q '^[0-9]\+$'; then
        "$@"
        return
    fi

    ARGS=(${ARGS[@]:0:$pos_of_last_argument})
    ${ARGS[@]} $(fn "${last_argument}")
}

# output file path given a index (mnemonic File Number)
# for some aliases if a number if not given return the argument
# back.
fn() {
  if [[ "$1" && "$1" =~ ^[0-9]+$ ]]; then
    item=${FFOUND[$1-1]}
    if [ -z "$item" ]; then return; fi
    if [ "$PWD" != "$FFOUND_PWD" ]; then echo -n $FFOUND_PWD/; fi
    echo ${item##$FFOUND_PWD//}
  elif [ "$1" ]; then
    echo $1
  fi
}

# shortcuts for the first three found files
fn1() { fn 1; }
fn2() { fn 2; }
fn3() { fn 3; }

# grep recursive and honor ff index
_grep_track_files() {
  FFOUND_PWD=${PWD}
  FFOUND=()
  local index=0
  local last_file=""

  while read -r line; do
    file=$(echo ${line} | awk -F':' '{ print $1 }' | sed $'s/\x1b\[[0-9]*m//g' )

    if [[ ${file} != ${last_file} ]];then
      FFOUND[${index}]=${file}
      last_file=${file}
      ((index++))
    fi

    _output_index_to_stdout $index;
    echo $line

  done < <(${@})
}

ggr() {
  _grep_track_files "fgrep --color=always -RIn ${@} *"
}

gr() {
  _grep_track_files "git grep --color=always -n ${@}"
}

ff() { myfind "f" "$1"; } # find file
fd() { myfind "d" "$1"; } # find directory
fl() { print_found; }     # file list

# these are calls that support file index number
# "v 1" opens in vim the file that has index number 1
# "d 1" goes to the directory where the file is
v() { vim $(fn "$1");  }
d() {
  if [[ -d $(fn "$1") ]]; then
    cd $(fn "$1")
  else
    cd "$(dirname "$(fn "$1")")";
  fi
}
c() { cat $(fn "$1"); }

# VCS: path to binaries
#GIT_BIN=$(which git)
#HG_BIN=$(which hg)
#SVN_BIN=$(which svn)

# VCS short aliases which also respect ff index
g() { _expand_last_arg_if_number ${GIT_BIN} "$@"; }
s() { _expand_last_arg_if_number ${SVN_BIN} "$@"; }
#h() { _expand_last_arg_if_number ${HG_BIN} "$@"; }
