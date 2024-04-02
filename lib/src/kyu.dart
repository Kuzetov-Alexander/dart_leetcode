void main() {
  List<int> assda = [1, 2, 2];
  print(squareSum(assda));
}

int squareSum(List<int> numbers) {
  return numbers.fold<int>(
      0, (previousValue, element) => previousValue ^ 2 + element ^ 2);
}
