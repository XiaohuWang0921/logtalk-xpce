:- if((current_logtalk_flag(prolog_dialect, swi), current_prolog_flag(gui, true))).

	:- initialization((
		set_logtalk_flag(report, warnings),
		logtalk_load(lgtunit(loader)),
		logtalk_load(loader, [debug(on), source_data(on)]),
		logtalk_load(tests, [hook(lgtunit)]),
		tests::run
	)).

:- else.

	:- initialization((
		write('(not applicable)'), nl
	)).

:- endif.
