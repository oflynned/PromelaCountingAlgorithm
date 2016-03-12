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
;
		;
		;
		;
		
	case 7: // STATE 5
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		
	case 9: // STATE 9
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 10: // STATE 19
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC QCount */

	case 11: // STATE 1
		;
		now.qruns = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 2
		;
		now.t = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 14: // STATE 4
		;
		now.temp = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 5
		;
		now.n = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 6
		;
		now.qcount = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 8
		;
		now.qruns = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 9
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC PCount */

	case 20: // STATE 1
		;
		now.pruns = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 2
		;
		now.t = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: // STATE 4
		;
		now.temp = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 5
		;
		now.n = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 6
		;
		now.pcount = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 27: // STATE 8
		;
		now.pruns = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 9
		;
		p_restor(II);
		;
		;
		goto R999;
	}

