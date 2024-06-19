function ll --wraps="ls" --description="ls -lha, separated by type"
  set -l ls_res "$(ls -lha --color=always $argv)"

  echo $ls_res | grep '^d'; 
  echo $ls_res | grep '^-'; 
  echo $ls_res | grep '^l'
end
