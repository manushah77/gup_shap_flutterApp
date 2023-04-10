class ChatUser {
  String? image;
  String? about;
  String? name;
  String? createdAt;
  String? id;
  String? lastActive;
  String? email;
  String? pushToken;
  bool? isOnline;

  ChatUser({
    this.createdAt,
    this.name,
    this.about,
    this.email,
    this.id,
    this.image,
    this.isOnline,
    this.lastActive,
    this.pushToken,
  });

  ChatUser.fromJson(Map<String, dynamic> json) {
    image = json['image'] ?? '';
    about = json['about'] ?? '';
    email = json['email'] ?? '';
    id = json['id'] ?? '';
    isOnline = json['isOnline'] ?? '';
    lastActive = json['lastActive'] ?? '';
    pushToken = json['pushToken'] ?? '';
    createdAt = json['createdAt'] ?? '';
    name = json['name'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['image'] = image;
    _data['name'] = name;
    _data['about'] = about;
    _data['isOnline'] = isOnline;
    _data['lastActive'] = lastActive;
    _data['pushToken'] = pushToken;
    _data['createdAt'] = createdAt;
    _data['id'] = id;
    _data['email'] = email;
    return _data;
  }
}
