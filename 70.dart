class Solution {
  // Time complexity is O(n) and space complexity is O(1)
  // This solution is an iterative solution
  // This is a fibonacci series
  int climbStairs(int n) {
    if (n <= 3) return n;

    var first = 2;
    var second = 3;
    var third = 0;

    for (int i = 4; i <= n; i++) {
      third = first + second;
      first = second;
      second = third;
    }

    return third;
  }

  // Time complexity is O(n) and space complexity is O(n)
  // Because we are using a map to store the values
  // This solution is a recursive solution
  final remember = {};
  int climbStairsWithRecursion(int n) {
    if (n == 1) return 1;

    if (n == 2) return 2;

    if (remember.containsKey(n)) {
      return remember[n];
    }

    remember[n] =
        climbStairsWithRecursion(n - 1) + climbStairsWithRecursion(n - 2);

    return remember[n];
  }
}

void main() {
  var n = 1000;
  var solution = Solution();
  print(solution.climbStairs(n));
}
