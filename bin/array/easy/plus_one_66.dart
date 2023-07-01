final List<int> digits = [1, 2, 3];

class Solution {
  List<int> plusOne(List<int> digits) {
    digits.reduce((value, element) => value + element);

    return digits;
  }
}

void main() {
  // print(Solution().setAlarm(true, true));
}
