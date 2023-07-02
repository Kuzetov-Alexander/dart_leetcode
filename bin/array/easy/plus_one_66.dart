final List<int> digits = [8, 9, 9, 9];

class Solution {
  List<int> plusOne(List<int> digits) {
    // int i = digits.length - 1;
    // digits[i] = digits[i] + 1;
    // for (int j = 0; j < digits.length; j++) {
    //   if (digits[i - j] == 10) {
    //     digits[i - j] = 0;
    //     if (i == 0) {
    //       return [1] + digits;
    //     }
    //     if (i - j - 1 == 0 && digits[i - j - 1] == 9) {
    //       digits[i - j - 1] = 0;
    //       return [1] + digits;
    //     }
    //     digits[i - j - 1] = digits[i - j - 1] + 1;
    //   }
    // }
    // return digits;

    for (int i = digits.length - 1; i >= 0; i--) {
      if (digits[i] != 9) {
        digits[i] += 1;
        break;
      } else {
        if (i != 0) {
          digits[i] = 0;
        } else {
          digits[i] = 0;
          digits.insert(0, 1);
        }
      }
    }
    return digits;
  }
}

void main() {
  print(Solution().plusOne(digits));
}
