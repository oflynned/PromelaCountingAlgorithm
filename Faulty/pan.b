	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		now.pcount = trpt->bup.oval;
		;
		goto R999;

	case 4: // STATE 2
		;
		now.qcount = trpt->bup.oval;
		;
		goto R999;

	case 5: // STATE 3
		;
		now.n = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 7: // STATE 5
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		
	case 10: // STATE 15
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC QCount */

	case 11: // STATE 1
		;
		now.temp = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 2
		;
		now.n = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 14: // STATE 4
		;
		now.qcount = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 5
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC PCount */

	case 16: // STATE 1
		;
		now.temp = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 2
		;
		now.n = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 19: // STATE 4
		;
		now.pcount = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 5
		;
		p_restor(II);
		;
		;
		goto R999;
	}
