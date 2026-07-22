class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> merged = [];

    int i = 0;
    int j = 0;

    while (i < nums1.length && j < nums2.length) {
      if (nums1[i] <= nums2[j]) {
        merged.add(nums1[i]);
        i++;
      } else {
        merged.add(nums2[j]);
        j++;
      }
    }

    while (i < nums1.length) {
      merged.add(nums1[i]);
      i++;
    }

    while (j < nums2.length) {
      merged.add(nums2[j]);
      j++;
    }

    int n = merged.length;

    if (n % 2 == 1) {
      return merged[n ~/ 2].toDouble();
    }

    return (merged[n ~/ 2 - 1] + merged[n ~/ 2]) / 2.0;
  }
}