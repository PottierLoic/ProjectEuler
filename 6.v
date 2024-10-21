fn main() {
  mut sum_square := 0
  mut square_sum := 0
  for i in 1..101 {
    sum_square += i * i
    square_sum += i
  }
  square_sum *= square_sum
  println(square_sum - sum_square)
}
