class MyUser{
  static const String Collection_Name="Users";
  String email;
  MyUser({required this.email});
 MyUser.fromJson(Map<String, dynamic>json):this(
   email: json['email']
 );
 Map<String,dynamic>toJson(){
   return {
     "email":email
   };
 }
}