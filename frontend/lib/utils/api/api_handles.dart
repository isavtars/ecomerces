class ApiHandle {
  const ApiHandle._();
  static const uri = "localhost:3000";
}

String ipAddress = '192.168.42.130';
int port = 3000;

String uri = 'http://$ipAddress:$port';
