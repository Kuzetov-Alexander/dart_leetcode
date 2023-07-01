final nums = [0, 1, 2, 2, 3, 0, 4, 2];
const val = 2;

class Solution {
  int removeElement(List<int> nums, int val) {
    int count = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == val) {
        nums.remove(nums[i]);
        // nums.removeAt(i) при удалении таким образом функция работает медленнее
        i = i - 1;
      } else {
        count++;
      }
    }
    return count;
  }
}

void main() {
  Solution().removeElement(nums, val);
}
