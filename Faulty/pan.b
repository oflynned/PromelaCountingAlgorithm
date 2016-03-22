	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		now.n = trpt->bup.oval;
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		
	case 7: // STATE 5
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC QCount */

	case 8: // STATE 1
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 11: // STATE 4
		;
		((P1 *)this)->_2_2_temp = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 5
		;
		now.n = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 14: // STATE 11
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 16: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC PCount */

	case 17: // STATE 1
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 20: // STATE 4
		;
		((P0 *)this)->_1_1_temp = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 5
		;
		now.n = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: // STATE 11
		;
		now.i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 25: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;
	}

