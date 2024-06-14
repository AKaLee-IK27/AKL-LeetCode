class Solution {
  int minFallingPathSum(List<List<int>> matrix) {
    List<List<int>> dp = List.generate(
        matrix.length, (index) => List.filled(matrix[0].length, 0));

    for (var i = 0; i < matrix[0].length; i++) {
      dp[0][i] = matrix[0][i];
    }

    for (var i = 1; i < matrix.length; i++) {
      for (var j = 0; j < matrix[i].length; j++) {
        dp[i][j] = matrix[i][j] + dp[i - 1][j];
        if (j > 0) {
          dp[i][j] = dp[i][j].compareTo(matrix[i][j] + dp[i - 1][j - 1]) < 0
              ? dp[i][j]
              : matrix[i][j] + dp[i - 1][j - 1];
        }
        if (j < matrix[0].length - 1) {
          dp[i][j] = dp[i][j].compareTo(matrix[i][j] + dp[i - 1][j + 1]) < 0
              ? dp[i][j]
              : matrix[i][j] + dp[i - 1][j + 1];
        }
      }
    }

    return dp[matrix.length - 1]
        .reduce((value, element) => value < element ? value : element);
  }
}

void main() {
  var matrix = [
    [2, 1, 3],
    [6, 5, 4],
    [7, 8, 9]
  ];
  var solution = Solution();
  print(solution.minFallingPathSum(matrix));
}
