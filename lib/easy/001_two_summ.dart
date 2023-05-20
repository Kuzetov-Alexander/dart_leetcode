// ignore_for_file: file_names

class Solution {
  List twoSum(List<int> nums, int target) {
    final Map<int, int> correspondence = <int, int>{};

    for (var i = 0; i < nums.length; i++) {
      final int value = nums[i];

      final int key = target - value;
      if (correspondence.containsKey(key)) {
        return [correspondence[key]!, i];
      }

      correspondence[value] = i;
    }
    return [];
  }
}

void main(List<String> args) {
  print(Solution().twoSum([1, 2, 3, 4, 5, 6, 7, 8, 9], 5));
}
