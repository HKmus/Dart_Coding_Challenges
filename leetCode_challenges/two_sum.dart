class Solution {
  static List<int> twoSum(List<int> nums, int target) {
    final map = Map<int, int>();

    for (var i = 0; i < nums.length; i++) {
      var remain = target - nums[i];
      if (map.containsKey(remain)) {
        return [map[remain]!, i];
      } else {
        map[nums[i]] = i;
      }
    }

    return [];
  }
}

void main() {
  print(Solution.twoSum([3, 2, 4], 6));
}
