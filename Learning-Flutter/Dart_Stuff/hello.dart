void main() {
  print("Hello, World!");
  String name1 = "Mike";
  List skills = ['numchuck skills, batman skills, awesomeness'];
  print(name1);
  print(skills);
  num mynumber = 12;
  print(mynumber);
  String last = "Brave";

  print(createGreeting(name1, last));
}

String createGreeting(String name, [String last = "Doe"]) {
  return "Hello, $name $last ";
}

String createGreeting2(name) => "Hello $name"; //this is shorthand

