class Solution {
  int minIncrementForUnique(List<int> nums) {
    nums.sort();

    var moves = 0;
    for (var i = 1; i < nums.length; i++) {
      if (nums[i] <= nums[i - 1]) {
        moves += nums[i - 1] - nums[i] + 1;
        nums[i] = nums[i - 1] + 1;
      }
    }
    return moves;
  }
}

void main() {
  var nums = [3, 2, 1, 2, 1, 7];
  var solution = Solution();
  print(solution.minIncrementForUnique(nums));
}
