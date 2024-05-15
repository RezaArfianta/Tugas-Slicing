import 'package:firsttest/models/ternak/pertumbuhan.dart';
import 'package:firsttest/models/ternak/pertumbuhan_akhir.dart';

class TernakRequestModel {
  TernakRequestModel(
      {required this.idEartag,
      required this.jenisTernak,
      required this.pertumbuhanAkhir,
      required this.pertumbuhanModel});

  final String idEartag;
  final String jenisTernak;
  final PertumbuhanAkhirModel? pertumbuhanAkhir;
  final List<PertumbuhanModel>? pertumbuhanModel;

  factory TernakRequestModel.fromJson(Map<String, dynamic> json) =>
      TernakRequestModel(
          idEartag: json['id_eartag'],
          jenisTernak: json['jenis_ternak'],
          pertumbuhanAkhir: (json['profile_pertumbuhan_akhir'] != null)
              ? PertumbuhanAkhirModel.fromJson(
                  json['profile_pertumbuhan_akhir'])
              : null,
          pertumbuhanModel: List<PertumbuhanModel>.from(
              json['pertumbuhan'].map((e) => PertumbuhanModel.fromJson(e))));

  Map<String, dynamic> toJson() => {
        'id_eartag': idEartag,
        'jenis_ternak': jenisTernak,
        'profile_pertumbuhan_akhir': pertumbuhanAkhir?.toJson(),
        'pertumbuhan': pertumbuhanModel != null
            ? List<PertumbuhanModel>.from(
                pertumbuhanModel!.map((x) => x.toJson()))
            : null,
      };
}
