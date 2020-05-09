fun sum_list(xs: int list) =
    if null xs
    then 0
    else hd xs + sum_list(tl xs);

sum_list([1, 2, 3]);

fun list_product(xs: int list) =
    if null xs
    then 1
    else hd xs * list_product(tl xs);

list_product([2, 4, 2]);

fun countdown(x: int) = (* [5, 4, 3, 2, 1] *)
    if x = 0
    then []
    else x :: countdown(x - 1);

countdown(7);

sum_list(countdown(10));

fun append(xs: int list, ys: int list) =
    if null xs
    then ys
    else (hd xs) :: (append(tl xs, ys));

(* int list * int list -> int list *)

append([1, 2], [7]);

(* functions over pairs of lists *)

fun sum_pair_list(xs: (int * int) list) =
    if null xs
    then 0
    else #1 (hd xs) + #2 (hd xs) + sum_pair_list(tl xs);

sum_pair_list([(1, 2), (4, 5)]);

fun firsts(xs: (int * int) list) =
    if null xs
    then []
    else (#1 (hd xs)) :: firsts(tl xs);

firsts([(1, 2), (3, 4)]);

fun seconds(xs: (int * int) list) =
    if null xs
    then []
    else (#2 (hd xs)) :: seconds(tl xs);

fun sum_pair_list2(xs: (int * int) list) = 
    sum_list(firsts xs) + sum_list(seconds xs);

sum_pair_list2([(1, 2), (3, 4)]);
 