class GetActivityDTO {
  String id;

  GetActivityDTO({required this.id});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
    };
  }
}
