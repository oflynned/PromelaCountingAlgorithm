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
	case 3: // STATE 1 - lab3.pml:36 - [n = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = now.n;
		now.n = 0;
#ifdef VAR_RANGES
		logval("n", now.n);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - lab3.pml:38 - [(run PCount())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - lab3.pml:39 - [(run QCount())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - lab3.pml:41 - [assert((n!=2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		spin_assert((now.n!=2), "(n!=2)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - lab3.pml:42 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC QCount */
	case 8: // STATE 1 - lab3.pml:22 - [i = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = 1;
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 2 - lab3.pml:22 - [((i<=20))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.i<=20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 3 - lab3.pml:24 - [((i<=20))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((now.i<=20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 4 - lab3.pml:26 - [temp = n] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_2_temp;
		((P1 *)this)->_2_2_temp = now.n;
#ifdef VAR_RANGES
		logval("QCount:temp", ((P1 *)this)->_2_2_temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 5 - lab3.pml:26 - [n = (temp+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.n;
		now.n = (((P1 *)this)->_2_2_temp+1);
#ifdef VAR_RANGES
		logval("n", now.n);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 6 - lab3.pml:27 - [printf('count via pid %d at qcount %d/20: %d\\n',_pid,i,n)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		Printf("count via pid %d at qcount %d/20: %d\n", ((int)((P1 *)this)->_pid), now.i, now.n);
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 11 - lab3.pml:22 - [i = (i+1)] (0:0:1 - 2)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = (now.i+1);
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 17 - lab3.pml:32 - [printf('exited with iteration %d',i)] (0:0:0 - 5)
		IfNotBlocked
		reached[1][17] = 1;
		Printf("exited with iteration %d", now.i);
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 18 - lab3.pml:33 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC PCount */
	case 17: // STATE 1 - lab3.pml:8 - [i = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = 1;
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 2 - lab3.pml:8 - [((i<=20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.i<=20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 3 - lab3.pml:10 - [((i<=20))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((now.i<=20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 4 - lab3.pml:12 - [temp = n] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->_1_1_temp;
		((P0 *)this)->_1_1_temp = now.n;
#ifdef VAR_RANGES
		logval("PCount:temp", ((P0 *)this)->_1_1_temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 5 - lab3.pml:12 - [n = (temp+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = now.n;
		now.n = (((P0 *)this)->_1_1_temp+1);
#ifdef VAR_RANGES
		logval("n", now.n);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 6 - lab3.pml:13 - [printf('count via pid %d at pcount %d/20: %d\\n',_pid,i,n)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		Printf("count via pid %d at pcount %d/20: %d\n", ((int)((P0 *)this)->_pid), now.i, now.n);
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 11 - lab3.pml:8 - [i = (i+1)] (0:0:1 - 2)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.i;
		now.i = (now.i+1);
#ifdef VAR_RANGES
		logval("i", now.i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 17 - lab3.pml:18 - [printf('exited with iteration %d',i)] (0:0:0 - 5)
		IfNotBlocked
		reached[0][17] = 1;
		Printf("exited with iteration %d", now.i);
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 18 - lab3.pml:19 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][18] = 1;
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

