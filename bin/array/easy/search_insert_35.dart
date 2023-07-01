final nums = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21];
const target = 2;

class Solution {
  int searchInsert(List<int> nums, int target) {
    int start = 0;
    int end = nums.length - 1;
    int mid = 0;

    while (start <= end) {
      mid = start + (end - start) ~/ 2;
      if (target == nums[mid]) {
        return mid;
      }
      if (target < nums[mid]) {
        end = mid - 1;
      } else {
        start = mid + 1;
      }
    }
    return start;
  }
}

void main() {
  print(Solution().searchInsert(nums, target));
  // Solution().searchInsert(nums, target);
}
