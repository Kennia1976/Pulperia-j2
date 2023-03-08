import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PulperiaJ2FirebaseUser {
  PulperiaJ2FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PulperiaJ2FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PulperiaJ2FirebaseUser> pulperiaJ2FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PulperiaJ2FirebaseUser>(
      (user) {
        currentUser = PulperiaJ2FirebaseUser(user);
        return currentUser!;
      },
    );
