let a = ref 1 in
let b = ref 2 in
let sum = ref 0 in

while !b < 4000000 do
  if !b mod 2 = 0 then
    sum := !sum + !b;
  let next = !a + !b in
  a := !b;
  b := next
done;

Printf.printf "%d" !sum
