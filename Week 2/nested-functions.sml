(* Nested Function *)
(* Functions are bindings, so bindings can be functions within let expressions *)

(* Flat Function Method *)

(* (3, 6) -> [3, 4, 5, 6] *)
fun countFromTo(from: int, to: int) =
		if from = to
		then to :: []
		else from :: countFromTo(from + 1, to);

fun count_up_from_one(x: int) =
		countFromTo(1, x);

count_up_from_one(10);

(* `countFromTo` should be private to `count_up_from_one` *)
(* Nested Function Method *)

fun count_up_from_one_nested(x: int) =
	let
		fun countFromTo(from: int, to: int) =
			if from = to
			then to :: []
			else from :: countFromTo(from + 1, to);
	in
		countFromTo(1, x)
	end;

count_up_from_one_nested(10);

fun count_up_from_one_nested_refactored(x: int) =
	let
		fun count(from: int) =
			if from = x
				then x :: []
			else from :: count(from + 1);
	in
		count(1)
	end;

count_up_from_one_nested_refactored 10;

(* 
	Use if: 
   - Private function is not reused, could be misued elsewhere, will be deprecated or changed later 
*)