part of softhai.orientdb_dart;

abstract class OConnection {

  bool get IsConnected;
  
  Future Connect(String server, int port, String database, String username, String password);
  
  Future<String> ExecuteCommand(String language, String command, {int limit: 20});
  
  Future<String> GetDatabaseSchema();
  
  Future Disconnect();
}