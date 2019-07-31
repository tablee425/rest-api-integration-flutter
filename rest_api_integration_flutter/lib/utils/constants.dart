class APIConstants {
  static const String OCTET_STREAM_ENCODING = 'application/octet-stream';
  static const String API_BASE_URL = 'http://172.20.11.61';
}

class APIOperations {
  static const String LOGIN = 'login';
  static const String REGISTER = 'register';
  static const String CHANGE_PASSWORD = 'chgPass';
  static const String SUCCESS = 'success';
  static const String FAILURE = 'failure';
}

class EventConstants {
  static const int NO_INTERNET_CONNECTION = 0;
  static const int LOGIN_USER_SUCCESSFUL = 500;
  static const int LOGIN_USER_UN_SUCCESSFUL = 501;
  static const int USER_REGISTRATION_SUCCESSFUL = 502;
  static const int USER_REGISTRATION_UN_SUCCESSFUL = 503;
  static const int USER_ALREADY_REGISTERED = 504;
}

class APIResponseCode {
  static const int SC_OK = 200;
}

class SharedPreferenceKeys {
  static const String IS_USER_LOGGED_IN = 'IS_USER_LOGGED_IN';
  static const String USER = 'USER';
}

class ProgressDialogTitles {
  static const String IN_PROGRESS = 'In Progress...';
  static const String USER_LOG_IN = 'Logging In...';
  static const String USER_CHANGE_PASSWORD = 'Changing...';
  static const String USER_REGISTER = 'Registering...';
}

