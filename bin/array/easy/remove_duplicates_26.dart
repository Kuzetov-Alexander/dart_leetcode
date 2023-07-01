final List<int> nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];

class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) {
      return 0;
    }
    int newLenght = 0;
    for (int i = 1; i < nums.length; i++) {
      int num = nums[i];
      if (num != nums[newLenght]) {
        newLenght++;
        nums[newLenght] = num;
      }
    }
    return newLenght + 1;
  }
}
// Еще круче
// class Solution {
//   int removeDuplicates(List<int> nums) {
// var k = 1;
// for(int i = 1; i<nums.length; i++){
// if(nums[i] != nums[i-1]){
//   nums[k]=nums[i];
//   k++;
// }
// }
// return k;
//   }
// }

void main() {
  Solution().removeDuplicates(nums);
}
