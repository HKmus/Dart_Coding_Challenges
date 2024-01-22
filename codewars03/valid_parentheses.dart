class Solution {
  bool isValid(String s) {
      List<String> openParenthesesStack = [];
      int openedOne = 0, closedOne = 0;
      if(s.length.isOdd){
          return false;
      } else {
          for(int i=0; i<s.length; i++){
              if(s[i]=='(' || s[i]=='[' || s[i]=='{'){
                  openParenthesesStack.add(s[i]);
                  openedOne++;
              } else {
                  switch(s[i]){
                      case ')':
                        if(openParenthesesStack.isEmpty || openParenthesesStack[openParenthesesStack.length-1]!='('){
                            return false;
                        } else {
                            openParenthesesStack.removeAt(openParenthesesStack.length-1);
                            closedOne++;
                        }
                        break;
                      case ']':
                        if(openParenthesesStack.isEmpty || openParenthesesStack[openParenthesesStack.length-1]!='['){
                            return false;
                        } else {
                            openParenthesesStack.removeAt(openParenthesesStack.length-1);
                            closedOne++;
                        }
                        break;
                      case '}':
                        if(openParenthesesStack.isEmpty || openParenthesesStack[openParenthesesStack.length-1]!='{'){
                            return false;
                        } else {
                            openParenthesesStack.removeAt(openParenthesesStack.length-1);
                            closedOne++;
                        }
                        break;
                  }
              }
          }
      }
      if(openedOne==closedOne) return true;
      else return false;
  }
}