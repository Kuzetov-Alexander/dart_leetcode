class Solution {
  int? romanToInt(String s) {
    const Map<String, int> mapRoman = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000
    };
    final n = s.length;
    int? sumNums = mapRoman[s[n - 1]];
    for (int i = n - 2; i >= 0; i--) {
      if (sumNums != null) {
        mapRoman[s[i]]! >= mapRoman[s[i + 1]]!
            ? sumNums += mapRoman[s[i]]!
            : sumNums -= mapRoman[s[i]]!;
      }
    }
    return sumNums;
  }
}

void main(List<String> args) {
  print(Solution().romanToInt('MDCX'));
}
