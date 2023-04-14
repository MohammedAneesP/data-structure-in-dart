import 'dart:developer';

void main(List<String> args) {
  List<int>numb = [0,1,2,0,3,6,0,1,2,0];
  Solution sn = Solution();
  sn.moveZeros(numb);
 
}
class Solution {
  void moveZeros(List<int>nums){
    for (var i = 0; i < nums.length; i++) {
      for (var j = i+1; j < nums.length-1; j++) {
        if (nums[i] == 0) {
          var temp = nums[i];
          nums[i] = nums[j];
          nums[j] = temp;
        }
      }
    }
    print(nums);
  }
}