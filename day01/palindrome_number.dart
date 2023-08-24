class Solution {
  bool isPalindrome(int x) {
      String numberInString = x.toString();
      for(int i=0; i<(numberInString.length~/2); i++){
          if(numberInString[i] != numberInString[(numberInString.length-1)-i]){
              return false;
          }
      } 
      return true;
  }
}
