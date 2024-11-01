let double_digits digits =
  let rec rec_double carry = function
    | [] -> if carry = 0 then [] else [carry]
    | d :: ds ->
      let result = 2 * d + carry in
      (result mod 10) :: rec_double (result / 10) ds
  in
  List.rev (rec_double 0 (List.rev digits))

let power_of_two_digit_sum exponent =
  let rec power digits = function
    | 0 -> digits
    | n -> power (double_digits digits) (n - 1)
  in
  let final_digits = power [1] exponent in
  List.fold_left (+) 0 final_digits

let () =
  let sum = power_of_two_digit_sum 1000 in
  Printf.printf "%d\n" sum
