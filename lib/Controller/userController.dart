import 'package:app_banking/dbConnection.dart';

class UserController {
  final DatabaseConnection databaseConnection = DatabaseConnection();

  Future<bool> login(String email, String password) async {
    await databaseConnection.connectToDatabase();

    try {
      var result = await databaseConnection.connection.query(
        "SELECT * FROM USERS WHERE email = @email",
        substitutionValues: {'email': email},
      );

      if (result.isEmpty) {
        print("Login Failed: No user found with email: $email");
        return false;
      } else {
        return true;
      }

    } catch (e) {
      print("Login Error: $e");
      return false;
    } finally {
      databaseConnection.closeConnection();
    }
  }

}