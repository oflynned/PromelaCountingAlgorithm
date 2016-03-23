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
	case 3: // STATE 1 - lab3.pml:32 - [pc = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		(trpt+1)->bup.oval = now.pc;
		now.pc = 0;
#ifdef VAR_RANGES
		logval("pc", now.pc);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - lab3.pml:33 - [n = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.oval = now.n;
		now.n = 0;
#ifdef VAR_RANGES
		logval("n", now.n);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - lab3.pml:35 - [(run PCount())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - lab3.pml:36 - [(run QCount())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - lab3.pml:38 - [((pc==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (!((now.pc==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - lab3.pml:39 - [printf('Asserting!')] (0:0:0 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		Printf("Asserting!");
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 7 - lab3.pml:40 - [assert((n!=2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		spin_assert((now.n!=2), "(n!=2)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - lab3.pml:41 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC QCount */
	case 11: // STATE 1 - lab3.pml:19 - [((i_q<=10))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((now.i_q<=10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 2 - lab3.pml:21 - [temp = n] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->temp;
		((P1 *)this)->temp = now.n;
#ifdef VAR_RANGES
		logval("QCount:temp", ((P1 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 3 - lab3.pml:21 - [n = (temp+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.n;
		now.n = (((P1 *)this)->temp+1);
#ifdef VAR_RANGES
		logval("n", now.n);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 4 - lab3.pml:22 - [printf('count via pid %d at pcount %d/10: %d\\n',_pid,i_q,n)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		Printf("count via pid %d at pcount %d/10: %d\n", ((int)((P1 *)this)->_pid), now.i_q, now.n);
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 5 - lab3.pml:23 - [i_q = (i_q+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.i_q;
		now.i_q = (now.i_q+1);
#ifdef VAR_RANGES
		logval("i_q", now.i_q);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 11 - lab3.pml:27 - [pc = (pc+1)] (0:0:1 - 3)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = now.pc;
		now.pc = (now.pc+1);
#ifdef VAR_RANGES
		logval("pc", now.pc);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 12 - lab3.pml:28 - [printf('exited with iteration %d',i_q)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		Printf("exited with iteration %d", now.i_q);
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 13 - lab3.pml:29 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC PCount */
	case 19: // STATE 1 - lab3.pml:5 - [((i_p<=10))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.i_p<=10)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 2 - lab3.pml:7 - [temp = n] (0:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((P0 *)this)->temp;
		((P0 *)this)->temp = now.n;
#ifdef VAR_RANGES
		logval("PCount:temp", ((P0 *)this)->temp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 3 - lab3.pml:7 - [n = (temp+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.n;
		now.n = (((P0 *)this)->temp+1);
#ifdef VAR_RANGES
		logval("n", now.n);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 4 - lab3.pml:8 - [printf('count via pid %d at pcount %d/10: %d\\n',_pid,i_p,n)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		Printf("count via pid %d at pcount %d/10: %d\n", ((int)((P0 *)this)->_pid), now.i_p, now.n);
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 5 - lab3.pml:9 - [i_p = (i_p+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = now.i_p;
		now.i_p = (now.i_p+1);
#ifdef VAR_RANGES
		logval("i_p", now.i_p);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 11 - lab3.pml:13 - [pc = (pc+1)] (0:0:1 - 3)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.pc;
		now.pc = (now.pc+1);
#ifdef VAR_RANGES
		logval("pc", now.pc);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 12 - lab3.pml:14 - [printf('exited with iteration %d',i_p)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		Printf("exited with iteration %d", now.i_p);
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 13 - lab3.pml:15 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
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

