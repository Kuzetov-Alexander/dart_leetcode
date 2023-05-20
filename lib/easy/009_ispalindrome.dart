// ignore_for_file: file_names

class Solution {
  bool isPalindrome(int x) {
    final value = x.toString();
    for (int i = 0; i < value.length; i++) {
      int j = value.length - i - 1;
      if (i > j) {
      } else if (value[i] == value[j]) {
      } else {
        return false;
      }
    }
    return true;
  }
}

void main(List<String> args) {
  print(Solution().isPalindrome(12321));
}
