fn main() {
	mut best_starting_index := 0
	mut max_length := 0
	mut index := 1

	for index < 1_000_000 {
		mut current := u64(index)
		mut length := 1
		for current != 1 {
			if current % 2 == 0 {
				current /= 2
			} else {
				current = 3 * current + 1
			}
			length += 1
		}
		if length > max_length {
			max_length = length
			best_starting_index = index
		}
		index += 1
	}
	println(best_starting_index)
}
