import math

fn main() {
  mut amount := 1
  mut prime := 2
  mut nb := 3
  for amount != 10001 {
    mut is_prime := true
    for i in 2..int(math.sqrt(nb)) + 1 {
      if nb % i == 0 {
        is_prime = false
        break
      }
    }
    if is_prime {
      prime = nb
      amount += 1
    }
    nb += 2
  }

  println(prime)
}
