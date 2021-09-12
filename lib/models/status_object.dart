class StatusObject {
  StatusObject({
    required this.type,
    required this.status,
    required this.date,
    required this.time,
  });

  String type;
  String status;
  DateTime date;
  String time;

  factory StatusObject.fromJson(Map<String, dynamic> json) => StatusObject(
    type: json["type"],
    status: json["status"],
    date: DateTime.parse(json["date"]),
    time: json["time"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "status": status,
    "date": date.toIso8601String(),
    "time": time,
  };

  @override
  String toString() {
    return 'StatusObject{type: $type, status: $status, date: $date, time: $time}';
  }

}
