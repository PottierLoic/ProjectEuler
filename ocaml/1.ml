let result = ref 0 in

for i = 0 to 999 do
  if i mod 3 = 0 || i mod 5 = 0 then
    result := !result + i
done;

Printf.printf "%d" !result
