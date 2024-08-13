class MessegesModel {
  String? sender;
  String? text;
  bool? seen;
  String? createon;

  MessegesModel({this.sender, this.text, this.seen, this.createon});

  MessegesModel.fromMap(Map<String, dynamic> map) {
    sender = map['sender'];
    text = map['text'];
    seen = map['seen'];
    createon = map['createon'].toDate();
  }

  Map<String, dynamic> toMap() {
    return {
      'sender': sender,
      'text': text,
      'seen': seen,
      'createon': createon,
    };
  }
}
