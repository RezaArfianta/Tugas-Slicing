class PertumbuhanAkhirModel {
  PertumbuhanAkhirModel({
    required this.idProduk,
    required this.tanggalInput,
  });

  final String idProduk;
  final String tanggalInput;

  factory PertumbuhanAkhirModel.fromJson(Map<String, dynamic> json) =>
      PertumbuhanAkhirModel(
        idProduk: json['id_produk'],
        tanggalInput: json['tanggal_input'],
      );

  Map<String, dynamic> toJson() => {
        'id_produk': idProduk,
        'tanggal_input': tanggalInput,
      };
}
