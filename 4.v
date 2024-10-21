import math

fn is_pal(n i64) bool {
  mut rev := i64(0)
  mut temp := n
  for temp > 0 {
    rev = rev * 10 + temp % 10
    temp /= 10
  }
  return rev == n
}

fn main() {
  mut num1 := 0
  mut num2 := 0
  mut max := 0  

  for i in 100..999 {
    for j in 100..999 {
      result := i * j
      if is_pal(result) && result > max {
        max = result
      }
    }
  }
  println(max)
}
