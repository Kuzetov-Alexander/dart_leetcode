void main(List<String> arguments) {
  print(nextHigher(1));
}

int nextHigher(int n) {
  final str = n.toRadixString(2).split('');
  for (int i = str.length - 1; i >= 0; i - 1) {
    if (str[i] == '0') {
      str[i] = '1';
      str[i + 1] = '0';
      break;
    }
    i--;
  }
  final binaryNumber = int.parse(str.join()).toString();
  return int.parse(binaryNumber, radix: 2);
}
