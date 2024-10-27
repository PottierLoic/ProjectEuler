fn main() {
	mut max := 21
	for true {
		mut found := true
		for i in 2 .. 21 {
			if max % i != 0 {
				max += 1
				found = false
			}
		}
		if found {
			break
		}
	}
	println(max)
}
