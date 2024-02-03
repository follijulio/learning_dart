void main() {
  var future = Future.delayed(Duration(seconds: 2));
  future.then((value) => print('world'));
    print('hello');
}
