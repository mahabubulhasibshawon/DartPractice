// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/

class Solution {
  int maxProfit(List<int> prices) {
    int buy = prices[0];
    int max = 0;
    int sell = 0;
    for(int i = 1; i<prices.length; i++){
      if(prices[i] < buy){
        buy = prices[i];
      }
      else{
        sell = prices[i] - buy;
        if(sell > max){
          max = sell;

        }
      }
    }return max;
  }
}
void main() {
  Solution solution = Solution();

  List<int> prices1 = [7, 1, 5, 3, 6, 4];
  List<int> prices2 = [7, 6, 4, 3, 1];

  print('Maximum profit for prices1: ${solution.maxProfit(prices1)}'); // Output: 5
  print('Maximum profit for prices2: ${solution.maxProfit(prices2)}'); // Output: 0
}