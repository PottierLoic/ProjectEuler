let rev n = 
  let rec loop acc = function
    | 0 -> acc
    | n -> loop (acc * 10 + n mod 10) (n / 10) in 
  loop 0 n

let () =
  let max = ref 0 in
  for nb1 = 100 to 999 do
    for nb2 = 100 to 999 do
      let result = nb1 * nb2 in
      if rev result = result && result > !max then
        max := result
    done;
  done;
  Printf.printf "%d\n" !max 
