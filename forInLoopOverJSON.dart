void main(){
  // declare json list
  var productList = [
    {'name':'soap','price':100},
    {'name':'sugar','price':50},
    {'name':'milk','price':120},
    {'name':'cake','price':300},
    {'name':'potato','price':30},
    {'name':'fish','price':500},
  ];

  for(var oneProduct in productList){
    var item = "product name is ${oneProduct['name']} and price is ${oneProduct['price']} Taka";
    print(item);
  }
}
