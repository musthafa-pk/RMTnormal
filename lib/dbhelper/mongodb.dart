import 'package:rentmything/dbhelper/constant.dart';

class MongoDatabase{
  static var Db,userCollection;
  static connect() async{
    Db = await Db.create(MONGO_CONN_URL);
  }
}