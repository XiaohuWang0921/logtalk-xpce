:- object(tests, extends(lgtunit)).

	:- info([
		version is 1.0,
		author is 'Xiaohu Wang',
		date is 2018/02/01,
		comment is 'Unit tests for the Logtalk-XPCE interface'
	]).

	succeeds(prolog_true) :-
		xpce(@prolog)::true.
	
	fails(prolog_fail) :-
		xpce(@prolog)::fail.

	succeeds(object_instance_of) :-
		xpce(object, Object)::create,
		xpce(Object)::instance_of(object),
		xpce(Object)::destroy.
	
	succeeds(object_same_class) :-
		xpce(object, Object)::create,
		xpce(Object)::same_class(Object),
		xpce(Object)::destroy.
	
	succeeds(object_equal) :-
		xpce(object, Object)::create,
		xpce(Object)::equal(Object),
		xpce(Object)::destroy.
	
	succeeds(object_same_reference) :-
		xpce(object, Object)::create,
		xpce(Object)::same_reference(Object),
		xpce(Object)::destroy.
	
	test(object_class_name) :-
		xpce(object, Object)::create,
		xpce(Object, ClassName)::class_name,
		ClassName == object.
	
	test(point_x) :-
		xpce(point(1, 2), X)::x,
		X == 1.
	
	test(point_y) :-
		xpce(point(1, 2), Y)::y,
		Y == 2.
	
	test(point_distance) :-
		xpce(point(0, 0), Distance)::distance(point(3, 4)),
		Distance == 5.

:- end_object.
