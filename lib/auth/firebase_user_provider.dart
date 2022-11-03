import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TravelBuddyFirebaseUser {
  TravelBuddyFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

TravelBuddyFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TravelBuddyFirebaseUser> travelBuddyFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<TravelBuddyFirebaseUser>(
        (user) => currentUser = TravelBuddyFirebaseUser(user));
