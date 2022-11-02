class DataClass {
  String uImageName;
  String uPlaceName;
  String uCountryName;
  String uPrice;
  DataClass(
      {required this.uImageName,
      required this.uPlaceName,
      required this.uCountryName,
      required this.uPrice});
}

List<DataClass> data = [
  DataClass(
      uImageName:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtAXUxkHgbbQ-LdlI5oymSDdjg4bFWf9c_bA&usqp=CAU",
      uPlaceName: "Fujinomiya",
      uCountryName: "Japan",
      uPrice: "\$250"),
  DataClass(
      uImageName:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4gGdNNAxLnKcPpaO5n_IfAjl7fJZMNYHKvw&usqp=CAU",
      uPlaceName: "Fushimi Inari",
      uCountryName: "Japan",
      uPrice: "\$280"),
  DataClass(
      uImageName:
          "https://th-thumbnailer.cdn-si-edu.com/NaExfGA1op64-UvPUjYE5ZqCefk=/fit-in/1600x0/filters:focal(1471x1061:1472x1062)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/b6/30/b630b48b-7344-4661-9264-186b70531bdc/istock-478831658.jpg",
      uPlaceName: "Tajmahal",
      uCountryName: "India",
      uPrice: "\$100"),
  DataClass(
      uImageName:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqEuQuiiQiOvnBI1GJNC30S6fFtfbRiAXEDB78XyrDbaGvNZp8CwieVocFd1SAoGuD6ls&usqp=CAU",
      uPlaceName: "Cox's Bazar",
      uCountryName: "Bangladesh",
      uPrice: "\$100"),
];


final List<String> placeName = [
  "Japan",
  "Italy",
  "Pakistan",
  "India",
  "Vhutan"
];
final List<String> placeImage = [
  "https://cdn.cnn.com/cnnnext/dam/assets/170606121226-japan---travel-destination---shutterstock-230107657.jpg",
  "https://cdn.travelpulse.com/images/31aaedf4-a957-df11-b491-006073e71405/bb73aab8-f2bf-4278-88c3-33dd628df23f/630x355.jpg",
  "https://www.eni.com/assets/images/global-presence/asia-pacifico/pakistan-islamabad.jpg.rend.375.400.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfjbL-FAroI15az85roUft2dxt5Z_WcBGU4xFnFooOD6npXdsAiQ16jSjgZmZw_67sKlI&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1c81IlOTEvzCz0NYEjHAOcpLchLTjW83kExDrFHKoO7e9OkHs8oubyvBeZ5Fg2yMuPLc&usqp=CAU"
];