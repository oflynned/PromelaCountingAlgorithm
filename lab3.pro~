#define TRUE 1
#define FALSE 0
#define PTURN false
#define QTURN true
bool pruns, qruns, t;
int n, temp, count;

proctype PCount() {  
  pruns = true;
  t = QTURN;
  
  (qruns == false || t == PTURN);
  
  //critical section
  temp = n;
  n = temp + 1;
  count++;
  printf("count via pid %d at count %d: %d\n", _pid, count, n);
  pruns = false
}

proctype QCount(){
  qruns = true;
  t = PTURN;
  
  (pruns == false || t == QTURN);
  
  //critical section
  temp = n;
  n = temp + 1;
  count++;
  printf("count via pid %d at count %d: %d\n", _pid, count, n);
  qruns = false
}

init {
  count = 0;
  do
    ::count < 20 -> 
      if
        ::run Pcount()
        ::run QCount()
      fi
    ::else ->
      break
  od
  run PCount();
  run QCount();
}
