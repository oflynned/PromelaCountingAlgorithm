#define TRUE 1
#define FALSE 0
#define PTURN false
#define QTURN true
bool pruns, qruns, t;
int n, temp, pcount, qcount;

proctype PCount() {  
  pruns = TRUE;
  t = QTURN;
  (qruns == FALSE || t == PTURN);
  //critical section
  n++;
  printf("count via pid %d at pcount %d/10: %d\n", _pid, pcount, n);
  pcount++;
  pruns = FALSE
}

proctype QCount(){
  qruns = TRUE;
  t = PTURN;
  (pruns == FALSE || t == QTURN);
  //critical section
  n++;
  printf("count via pid %d at qcount %d/10: %d\n", _pid, qcount, n);
  qcount++;
  qruns = false
}

init {
  pcount = 1;
  qcount = 1;
  do
    :: if
    :: (pcount < 10) ->
          run PCount()
    :: (qcount < 10) ->
          run QCount()      
    ::else -> goto end;
    fi
  od
  end:
  printf("exiting\n");
}
