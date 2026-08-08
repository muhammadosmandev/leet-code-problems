class Solution {
  int threeSumClosest(List<int> nums, int target) {
    nums.sort();

    int closest = nums[0] + nums[1] + nums[2];

    for (int i = 0; i < nums.length - 2; i++) {
      int left = i + 1;
      int right = nums.length - 1;

      while (left < right) {
        int sum = nums[i] + nums[left] + nums[right];

        if ((sum - target).abs() < (closest - target).abs()) {
          closest = sum;
        }

        if (sum == target) {
          return sum;
        } else if (sum < target) {
          left++;
        } else {
          right--;
        }
      }
    }

    return closest;
  }
}