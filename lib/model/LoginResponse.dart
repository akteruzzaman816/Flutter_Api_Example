class LoginResponse {

  int? statusCode;
  String? message;
  String? agentId;
  String? token;

  LoginResponse(this.statusCode, this.message, this.agentId, this.token);

  LoginResponse.fromJson(dynamic json) {
    statusCode = json['status_code'];
    message = json['message'];
    agentId = json['agent_id'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status_code'] = statusCode;
    map['message'] = message;
    map['agent_id'] = agentId;
    map['token'] = token;
    return map;
  }

}