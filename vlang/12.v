fn count_divisors(n int) int {
	mut count := 0
	mut i := 1
	for i * i <= n {
		if n % i == 0 {
			if i * i == n {
				count += 1
			} else {
				count += 2
			}
		}
		i += 1
	}
	return count
}

fn main() {
	mut n := 1
	mut triangular := 0
	for {
		triangular = n * (n + 1) / 2
		if count_divisors(triangular) > 500 {
			break
		}
		n += 1
	}
	println(triangular)
}
