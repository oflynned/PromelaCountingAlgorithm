int n, i;

//1 of each process, another process to monitor the counter
//assert if n==2, true iff can never be found in the whole scope
//processes instantiated once and then run again as same process

proctype PCount() {  
  for (i : 1 .. 20) {
    if
    ::(i <= 20) ->
    int temp = n
    n = temp + 1
    printf("count via pid %d at pcount %d/20: %d\n", _pid, i, n)
    ::else -> goto end
    fi;
  }
  end:
  printf("exited with iteration %d", i);
}

proctype QCount() {  
  for (i : 1 .. 20) {
    if
    ::(i <= 20) ->
    int temp = n
    n = temp + 1
    printf("count via pid %d at qcount %d/20: %d\n", _pid, i, n)
    ::else -> goto end
    fi;
  }
  end:
  printf("exited with iteration %d", i);
}

init {
  n = 0;
  
  run PCount();
  run QCount();
  
  assert (n != 2);
}
