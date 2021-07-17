import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CorraDoCoronaFirebaseUser {
  CorraDoCoronaFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

CorraDoCoronaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CorraDoCoronaFirebaseUser> corraDoCoronaFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CorraDoCoronaFirebaseUser>(
            (user) => currentUser = CorraDoCoronaFirebaseUser(user));
