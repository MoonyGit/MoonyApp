import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/standard.dart';
import 'package:moony_app/activity_swipe/domain/model/decision.dart';
import 'package:moony_app/chat/data/remote/chat_preview_remote_source.dart';
import 'package:moony_app/chat/data/remote/model/chat_message_data_model.dart';
import 'package:moony_app/chat/data/remote/model/chat_preview_data_model.dart';
import 'package:moony_app/chat/data/remote/model/chat_room_data_model.dart';
import 'package:moony_app/chat/data/remote/model/participant_info_data_model.dart';
import 'package:moony_app/common/util/logger.dart';

/// Swipe data source implementation
class MockChatPreviewRemoteSource implements IChatPreviewRemoteSource {
  final List<ChatPreviewDataModel> _mockedList = <ChatPreviewDataModel>[];

  @override
  Future<bool> setSwipeDecision(
          {required String userId,
          required String activityId,
          required Decision decision}) =>
      Future<bool>.value(true).also((Future<bool> it) {
        Logger.d("setSwipeDecision userid: $userId, "
            "activityId: $activityId, decision: $decision");
      });

  @override
  Future<List<ChatPreviewDataModel>> getChatPreviewList() {
    return Future<List<ChatPreviewDataModel>>(
      () => _mockedList
        ..clear()
        ..addAll(_generateChatPreviewMock(),
        ),
    );
  }

  @override
  Future<ChatRoomDataModel?> getChatRoomById(
          {required String activityId}) async =>
      _generateChatRoomDataModelMock().firstWhereOrNull(
          (ChatRoomDataModel element) => element.activityId == id);

  List<ChatPreviewDataModel> _generateChatPreviewMock() =>
      <ChatPreviewDataModel>[
        ChatPreviewDataModel(
          activityId: "Act1",
          imageUri:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Tour_Eiffel_Wikimedia_Commons.jpg/260px-Tour_Eiffel_Wikimedia_Commons.jpg',
          title: 'Visite de la Tour Eiffel',
          description: 'Ki Cheuk, Mamadou Segpa',
          lastMessage: "",
        ),
        ChatPreviewDataModel(
          activityId: "Act2",
          imageUri:
          "https://i.f1g.fr/media/eidos/805x453_crop/2021/08/28/XVM0b9aec8a-0757-11ec-88f3-ac6a4e921813.jpg",
          title: 'Le repas',
          description: 'Alex, Alexandre, Sébastien',
          lastMessage: "Alors on part sur une raclette ?!!",
        ),
      ];

  List<ChatRoomDataModel> _generateChatRoomDataModelMock() =>
      <ChatRoomDataModel>[
        ChatRoomDataModel(
          activityId: "Act1",
          activityImageUri:
  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Tour_Eiffel_Wikimedia_Commons.jpg/260px-Tour_Eiffel_Wikimedia_Commons.jpg',
          activityName: "Visite de la Tour Eiffel",
          participant_info: _generateParticipantInfoDataModelMock(),
          messages: _generateChatMessageDataModelMock(),
          participant_ids_read: [],
        ),
        ChatRoomDataModel(
          activityId: "Act2",
          activityImageUri:
          "https://i.f1g.fr/media/eidos/805x453_crop/2021/08/28/XVM0b9aec8a-0757-11ec-88f3-ac6a4e921813.jpg",
          activityName: "Le repas",
          participant_info: _generateParticipantInfoDataModelMock(),
          messages: _generateChatMessageDataModelMock(),
          participant_ids_read: ["1"],
        ),
      ];

  List<ParticipantInfoDataModel> _generateParticipantInfoDataModelMock() =>
      <ParticipantInfoDataModel>[
        ParticipantInfoDataModel(
          id: "1",
          imageUri: "https://media.auchan.fr/MEDIASTEP114480848_230x230/B2CD/",
          name: "Mme Pomme",
        ),
        ParticipantInfoDataModel(
          id: "2",
          imageUri:
              "https://mediaorigcdna.qooq.com/cache/201911.1/qooq/images/ingredients/zoom_23.jpg",
          name: "Mr Banane",
        ),
      ];

  List<ChatMessageDataModel> _generateChatMessageDataModelMock() =>
      <ChatMessageDataModel>[
        ChatMessageDataModel(
            creatorId: "1",
            date: DateTime.parse("14/01/2022 16:34:21"),
            text: "Coucou tout le monde !",
        ),
        ChatMessageDataModel(
            creatorId: "2",
            date: DateTime.parse("14/01/2022 16:37:01"),
            text: "Salut Madame Banane ! :)",
        ),
      ];
}
