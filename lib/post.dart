class Post {
  String body;
  String author;
  int likes = 0;
  bool userLikes = false;

  Post(this.body, this.author);

  void likePost() {
    this.userLikes = !this.userLikes;

    if (this.userLikes) {
      this.likes++;
    } else {
      this.likes--;
    }
  }
}
