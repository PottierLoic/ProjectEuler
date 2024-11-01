let i = ref 21 in
let found = ref false in
while not !found do
  let cond = ref true in
  for j = 2 to 21 do
    if !i mod j <> 0 then
      cond := false
  done;
  if not !cond then
    i := !i + 21
  else
    found := true
done;
Printf.printf "%d\n" !i
