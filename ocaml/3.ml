let rec max_list lst =
  match lst with
  | [] -> -1
  | [x] -> x
  | x :: xs ->
    let max_rest = max_list xs in
    if x > max_rest then x else max_rest

let largest_prime_factor n =
  let number = ref n in
  let factors = ref [] in
  let i = ref 2 in
  while !number > 1 do
    if !number mod !i = 0 then begin
      factors := !i :: !factors;
      number := !number / !i
    end else
      incr i
  done;
  max_list !factors

let () =
  let max = largest_prime_factor 600851475143 in
  Printf.printf "%d\n" max

