# ============================
# Helpers
# ============================

function add_divider -d "Adds pipe between segments"
  echo -n -s " | "
end

# ============================
# Draw functions
# ============================

function prompt_segment -d "Draws a segment for the prompt"
  set_color --bold $argv[1]
  printf $argv[2]
  set_color normal
end

# TODO Add branch/arrow symbol for branch/detached head
function prompt_git -d "Gets current git branch"
  if command git rev-parse --is-inside-work-tree > /dev/null 2>&1
    #set -l branch (command git show-ref --head -s --abbrev | head -n1 2> /dev/null)
    set -l branch (command git branch --show-current | head -n1 2> /dev/null)
    prompt_segment fff500 $branch
  end
end

function prompt_path -d "Gets current path"
  set -l path (command pwd)
  prompt_segment 9438c9 $path
end

function prompt_user -d "Prompts current user and machine"
  set -l user (command whoami)
  set -l result (string join "@" $user $hostname)
  prompt_segment 00a8e6 $result
end

# ============================
# Apply theme
# ============================

function fish_prompt
  prompt_segment normal "\U0001F3B5 "
  prompt_user
  add_divider
  prompt_path
  add_divider
  prompt_git
  prompt_segment normal "
  \U0001F3A4 "
end
