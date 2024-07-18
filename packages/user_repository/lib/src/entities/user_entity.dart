class MyUserEntity {
  String userId;
  String email; 
  String name; 
  bool hasActiveCart;

  MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });


//like json file sent to the firebase.
//need to be a string because firebase cannot read object
  Map<String, Object> toDocument(){
    return{
      'userId': userId,
      'email': email,
      'name': name,
      'hasActiveCart' : hasActiveCart,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc){
    return MyUserEntity(userId: doc['userId'], email: doc['email'], name: doc['name'], hasActiveCart: doc['hasActiveCart']);
  }
}