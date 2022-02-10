/// Budget class
class ParticipantInfo {
  /// Constructor
  ParticipantInfo({
    required this.id,
    required this.imageUri,
    required this.name,
  });

  /// Participant's id
  final String id;

  /// Participant's image
  final Uri imageUri;

  /// Participant's name
  final String name;
}
