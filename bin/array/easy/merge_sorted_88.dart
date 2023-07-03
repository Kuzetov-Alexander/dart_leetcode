final List<int> nums1 = [1, 2, 3];
final List<int> nums2 = [0];

class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int i = m - 1;
    int j = n - 1;
    int k = i + j;

    while (i >= 0 && j >= 0 && k > 0) {
      if (nums1[i] > nums2[j]) {
        nums1[k] = nums1[i];
        i--;
      } else {
        nums1[k] = nums2[j];
        j--;
      }
      k--;
    }

    while (j >= 0) {
      if (j == 0) {
        nums1[k] = nums2[j];
        k--;
      }
      nums1[k] = nums2[j];
      j--;
      k--;
    }

    print(nums1);
  }
}

void main() {
  Solution().merge(nums1, nums1.length, nums2, nums2.length);
}
