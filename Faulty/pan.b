	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		now.pc = trpt->bup.oval;
		;
		goto R999;

	case 4: // STATE 2
		;
		now.n = trpt->bup.oval;
		;
		goto R999;

	case 5: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 10: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC QCount */
;
		;
		
	case 12: // STATE 2
		;
		((P1 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 3
		;
		now.n = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 15: // STATE 5
		;
		now.i_q = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 11
		;
		now.pc = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC PCount */
;
		;
		
	case 20: // STATE 2
		;
		((P0 *)this)->temp = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 3
		;
		now.n = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: // STATE 5
		;
		now.i_p = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 11
		;
		now.pc = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 26: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;
	}

