fn main() {
	mut number := i64(600851475143)
	mut factors := []i64{}
	for i in 2 .. number + 1 {
		for number % i == 0 {
			factors << i
			number /= i
		}
		if number == 1 {
			break
		}
	}
	if number > 1 {
		factors << number
	}

	mut max := i64(0)
	for fac in factors {
		if fac > max {
			max = fac
		}
	}

	print(max)
}
