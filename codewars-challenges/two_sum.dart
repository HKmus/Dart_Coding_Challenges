class Solution {
  List<int> twoSum(List<int> nums, int target) {
      List<int> numIndexes = [];
      for(int i=0; i<nums.length; i++){
          for(int j=0; j<nums.length; j++){
              if(i!=j && nums[i]+nums[j]== target) numIndexes.add(j);
          }
      }
      return numIndexes;
  }
}
