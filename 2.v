fn main() {
	mut value := 2
	mut x1 := 1
	mut x2 := 2
	mut next_value := 0

	for next_value < 4000000 {
		next_value = x1 + x2
		if next_value % 2 == 0 {
			value += next_value
		}
		x1 = x2
		x2 = next_value
	}

	println(value)
}
