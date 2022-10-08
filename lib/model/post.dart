class Post {
  String created_time;
  String id;
  String message;
  Post(this.id, this.message, this.created_time);
  Post.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        message = json['message'],
        created_time = json['created_time'];
  Map<String, dynamic> toJson() => {
        'id': id,
        'message': message,
        'created_time': created_time,
      };
}
