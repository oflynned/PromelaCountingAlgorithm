#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - lab3.pml:31 - [pcount = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = now.pcount;
		now.pcount = 1;
#ifdef VAR_RANGES
		logval("pcount", now.pcount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - lab3.pml:32 - [qcount = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.oval = now.qcount;
		now.qcount = 1;
#ifdef VAR_RANGES
		logval("qcount", now.qcount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - lab3.pml:35 - [((pcount<10))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!((now.pcount<10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - lab3.pml:36 - [(run PCount())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - lab3.pml:37 - [((qcount<10))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (!((now.qcount<10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - lab3.pml:38 - [(run QCount())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 14 - lab3.pml:43 - [printf('exiting\\n')] (0:0:0 - 3)
		IfNotBlocked
		reached[2][14] = 1;
		Printf("exiting\n");
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 15 - lab3.pml:44 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC QCount */
	case 11: // STATE 1 - lab3.pml:20 - [qruns = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.qruns);
		now.qruns = 1;
#ifdef VAR_RANGES
		logval("qruns", ((int)now.qruns));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 2 - lab3.pml:21 - [t = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)now.t);
		now.t = 0;
#ifdef VAR_RANGES
		logval("t", ((int)now.t));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 3 - lab3.pml:22 - [(((pruns==0)||(t==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((((int)now.pruns)==0)||(((int)now.t)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 4 - lab3.pml:24 - [n = (n+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = n;
		n = (n+1);
#ifdef VAR_RANGES
		logval("n", n);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 5 - lab3.pml:25 - [printf('count via pid %d at qcount %d/10: %d\\n',_pid,qcount,n)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		Printf("count via pid %d at qcount %d/10: %d\n", ((int)((P1 *)this)->_pid), now.qcount, n);
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 6 - lab3.pml:26 - [qcount = (qcount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = now.qcount;
		now.qcount = (now.qcount+1);
#ifdef VAR_RANGES
		logval("qcount", now.qcount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 7 - lab3.pml:27 - [qruns = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((int)now.qruns);
		now.qruns = 0;
#ifdef VAR_RANGES
		logval("qruns", ((int)now.qruns));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 8 - lab3.pml:28 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC PCount */
	case 19: // STATE 1 - lab3.pml:9 - [pruns = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((int)now.pruns);
		now.pruns = 1;
#ifdef VAR_RANGES
		logval("pruns", ((int)now.pruns));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 2 - lab3.pml:10 - [t = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.t);
		now.t = 1;
#ifdef VAR_RANGES
		logval("t", ((int)now.t));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 3 - lab3.pml:11 - [(((qruns==0)||(t==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((((int)now.qruns)==0)||(((int)now.t)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 4 - lab3.pml:13 - [n = (n+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = n;
		n = (n+1);
#ifdef VAR_RANGES
		logval("n", n);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 5 - lab3.pml:14 - [printf('count via pid %d at pcount %d/10: %d\\n',_pid,pcount,n)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		Printf("count via pid %d at pcount %d/10: %d\n", ((int)((P0 *)this)->_pid), now.pcount, n);
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 6 - lab3.pml:15 - [pcount = (pcount+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.pcount;
		now.pcount = (now.pcount+1);
#ifdef VAR_RANGES
		logval("pcount", now.pcount);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 7 - lab3.pml:16 - [pruns = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.pruns);
		now.pruns = 0;
#ifdef VAR_RANGES
		logval("pruns", ((int)now.pruns));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 8 - lab3.pml:17 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

