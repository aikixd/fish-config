function aksmods-progress
  
  #systemctl status 'akmods@*.service'

  # check which aksmods are running and print out the list.
  # if no aksmods are running, print "No aksmods are running."
  # Otherwise, print the list of running aksmods, appended with their status and running time.
  set aksmods (systemctl list-units --type=service --state=running |
               grep 'akmods@' |
               awk '{print $1}' |
               sed 's/\.service//')

  if test (count $akmods) -eq 0
    echo "No aksmods are running."
  else
    echo "Running aksmods:"
    for aksmod in $akmods
      set status (systemctl show -p ActiveState,SubState,ExecMainStatus --value $aksmod.service)
      set running_time (systemctl show -p ActiveEnterTimestamp --value $aksmod.service)
      set running_time (date -d "$running_time" +%s)
      echo "$aksmod: $status, running for $running_time seconds"
end
