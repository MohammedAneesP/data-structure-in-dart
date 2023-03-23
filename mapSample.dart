

String str = "malayalam";
Map <dynamic,List<dynamic>> sample = Map();
void main(List<String> args) {
  
  for (var i = 0; i < str.length; i++) {
    sample[i]=[];
    for (var j = i; j < str.length; j++) {
      sample[i]?.add(str[j]);
    }
  }
 sample.forEach((key, value) {
  print("$key"+" $value");
 });
} 