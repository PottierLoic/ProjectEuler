import math

fn main() {
	mut sum := u64(2)
	mut index := 3
	for index < 2_000_000 {
		mut is_prime := true
		for i in 2 .. int(math.sqrt(index)) + 1 {
			if index % i == 0 {
				is_prime = false
				break
			}
		}
		if is_prime {
			sum += u64(index)
		}
		index += 2
	}
	println(sum)
}
