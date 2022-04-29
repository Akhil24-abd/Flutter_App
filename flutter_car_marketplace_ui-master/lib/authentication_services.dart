import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService{
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  Stream<User> get authStateChanges => _firebaseAuth.authStateChanges();
  Future<String> signIn({name, email}) async{
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: name);
      return "Signed In";
    } on FirebaseAuthException catch (e){
      return e.message;
    }
  }
}