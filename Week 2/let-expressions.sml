(* Let Expressions *)

(* Syntax *)
(* let b1, b2, ... bn in e end *)
(* Only in scope for bindings within body of that let expression and no where else *)
(* val is top-level *)

fun silly1(z: int) =
    let 
        val x = if z > 0 then z else 34
        val y = x + z + 9
    in
        if x > y then x * 2 else y * y
    end;

fun silly2() =
    let 
        val x = 1
    in
        (* Shadowing earlier x in first let expression *)
        (let val x = 2 in x + 1 end) + (let val y = x + 2 in y + 1 end)
    end;

silly2(); (* 7 *)