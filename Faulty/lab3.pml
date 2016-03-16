int n, temp, pcount, qcount;

proctype PCount() {  
  temp = n;
  n = temp + 1;
  printf("count via pid %d at pcount %d/10: %d\n", _pid, pcount, n);
  pcount++;
}

proctype QCount() {
  temp = n;
  n = temp + 1;
  printf("count via pid %d at qcount %d/10: %d\n", _pid, qcount, n);
  qcount++;
}

init {
  pcount = 1;
  qcount = 1;
  n = 0;
  do
  :: if
     :: (pcount < 10) ->
        run PCount()
     :: (qcount < 10) -> 
        run QCount()
     :: (pcount >= 10 && qcount < 10) -> 
        run QCount()
     :: (qcount >= 10 && pcount < 10) -> 
        run PCount()
     :: else -> goto end
     fi
  od
  end:
  printf("exiting\n");
}
