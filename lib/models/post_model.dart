class Post{
  final int id;
  final String name;
  final String email;
  final String body;

  const Post({
   required  this.id,
    required this.name,
    required this.email,
    required this.body
});


  factory Post.fromMap(Map<String, dynamic> map){
    return Post(
      id: map["id"] as int,
      name: map["name"] as String,
      email:map["email"]as String,
      body: map["body"] as String
    );
  }



}