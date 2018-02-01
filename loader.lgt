:- if((current_logtalk_flag(prolog_dialect, swi), current_prolog_flag(gui, true))).

	:- use_module(library(pce)).
	:- initialization((
		(	logtalk::expand_library_path(xpce, XPCEPath) ->
			atom_concat(XPCEPath, xpce_hooks, AbsolutePath),
			consult(AbsolutePath)
		;	write('XPCE example not found. Continue without Logtalk call-back integration support.')
		),
		logtalk_load(xpce)
	)).

:- else.

	:- initialization((write('(not applicable)'), nl)).

:- endif.
