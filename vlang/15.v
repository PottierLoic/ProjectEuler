fn binomial(n int, k int) u64 {
	mut k_mut := k
	if k_mut > n - k_mut {
		k_mut = n - k_mut
	}
	mut result := u64(1)
	for i in 1 .. k_mut + 1 {
		numerator := u64(n - k_mut + i)
		denominator := u64(i)
		result = (result * numerator) / denominator
	}
	return result
}

fn main() {
	println(binomial(40, 20))
}
