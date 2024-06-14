class Solution {
  bool uniqueOccurrences(List<int> arr) {
    Map<int, int> mapOccurences = {};

    for (var val in arr) {
      mapOccurences[val] = (mapOccurences[val] ?? 0) + 1;
    }

    Set<int> setOccurences = {};
    for (var val in mapOccurences.values) {
      if (setOccurences.contains(val)) {
        return false;
      }
      setOccurences.add(val);
    }

    return true;
  }
}
