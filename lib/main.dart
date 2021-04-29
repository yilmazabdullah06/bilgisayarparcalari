import 'package:flutter/material.dart';
import 'hakkimizda.dart';
import 'bizeulasin.dart';
import 'biz_kimiz.dart';

void main() {
  runApp(
    MaterialApp(
      home: anasayfaa(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class anasayfaa extends StatefulWidget {
  @override
  _anasayfaaState createState() => _anasayfaaState();
}

class _anasayfaaState extends State<anasayfaa> {
  int _counter = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counter4 = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _incrementCounter3() {
    setState(() {
      _counter3++;
    });
  }

  void _incrementCounter4() {
    setState(() {
      _counter4++;
    });
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Anasayfa',
      style: optionStyle,
    ),
    Text(
      'Index 1: Galeri',
      style: optionStyle,
    ),
    Text(
      'Index 2: Ayarlar',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(
          "Teknoloji Bilgim",
        ),
        centerTitle: true,
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            new UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.lightGreen),
              accountName: new Text("Abdullah Yılmaz"),
              accountEmail: new Text("yilmazabdullah0606@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new AssetImage('assets/profil.jpg'),
                backgroundColor: Colors.lightGreen,
              ),
            ),
            ListTile(
              title: Text("Hakkımızda"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => hakkimda()));
              },
            ),
            Divider(
              height: 10,
              color: Colors.lightGreen,
            ),
            ListTile(
              title: Text("Bize Ulaşın"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => bizeulasin()));
              },
            ),
            Divider(
              height: 10,
              color: Colors.lightGreen,
            ),
            ListTile(
              title: Text("Bize Kimiz ?"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => bizkimiz()));
              },
            ),
            Divider(
              height: 10,
              color: Colors.lightGreen,
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Image.network(
                        "https://i.pinimg.com/originals/29/17/c4/2917c4ac6d657289fc29f390703ce0ad.jpg"),
                    ListTile(
                      leading: Icon(
                        Icons.fiber_new_outlined,
                        color: Colors.lightGreen,
                        size: 40,
                      ),
                      title: Text(
                        "Bilgisayarın Dünden Bugüne Tarihi",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Konu : Bilgi"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                          "Bilgisayar, kendisine programlama yoluyla komuta edilmiş bir dizi aritmetik ya da mantık işlemini otomatik olarak yapabilen bir makinedir. Günümüz bilgisayarları..."),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        bilgisayarintarihi())), //
                            child: Text(
                              "Yazıya Git",
                              style: TextStyle(
                                  color: Colors.lightGreen,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          '$_counter',
                        ),
                        IconButton(
                          onPressed: _incrementCounter,
                          icon: Icon(Icons.thumb_up),
                          color: Colors.green,
                        ),
                        Text(
                          '$_counter2',
                        ),
                        IconButton(
                          onPressed: _incrementCounter2,
                          icon: Icon(Icons.thumb_down),
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.lightGreen,
                      height: 12,
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // boşluk
                    Image.network(
                        "https://pixelz.cc/wp-content/uploads/2016/11/cpu-processor-uhd-4k-wallpaper.jpg"),
                    ListTile(
                      leading: Icon(
                        Icons.fiber_new_outlined,
                        color: Colors.lightBlue,
                        size: 40,
                      ),
                      title: Text(
                        "İşlemci Neye Yarar ?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Konu : Bilgi"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                          "Merkezî işlem birimi (Türkçe kısaltması MİB, İngilizce: Central Process Unit ya da kısaca CPU), dijital bilgisayarların veri işleyen ve yazılım komutlarını..."),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => islemcineyeyarar())),
                            child: Text(
                              "Yazıya Git",
                              style: TextStyle(
                                  color: Colors.lightBlue,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          '$_counter3',
                        ),
                        IconButton(
                          onPressed: _incrementCounter3,
                          icon: Icon(Icons.thumb_up),
                          color: Colors.green,
                        ),
                        Text(
                          '$_counter4',
                        ),
                        IconButton(
                          onPressed: _incrementCounter4,
                          icon: Icon(Icons.thumb_down),
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.lightBlue,
                      height: 12,
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // boşluk
                    Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/d/db/Swissbit_2GB_PC2-5300U-555.jpg"),
                    ListTile(
                      leading: Icon(
                        Icons.fiber_new_outlined,
                        color: Colors.purple,
                        size: 40,
                      ),
                      title: Text(
                        "PC Kullanıcıların Atar Damarı RAM",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Konu : Bilgi"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                          "Rastgele erişimli hafıza (İng. İngilizce: Random Access Memory, RAM) mikroişlemcili sistemlerde kullanılan ve genellikle çalışma verilerini ve makine..."),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ramneyeyarar())),
                            child: Text(
                              "Yazıya Git",
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Text(
                          '$_counter3',
                        ),
                        IconButton(
                          onPressed: _incrementCounter3,
                          icon: Icon(Icons.thumb_up),
                          color: Colors.green,
                        ),
                        Text(
                          '$_counter4',
                        ),
                        IconButton(
                          onPressed: _incrementCounter4,
                          icon: Icon(Icons.thumb_down),
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.purple,
                      height: 12,
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // boşluk
                    Image.network(
                        "https://pchocasi.com.tr/wp-content/uploads/2015/11/msi-anakart-1200x900.jpg"),
                    ListTile(
                      leading: Icon(
                        Icons.fiber_new_outlined,
                        color: Colors.red,
                        size: 40,
                      ),
                      title: Text(
                        "Anakart Hakkında Bilinmeyenler ?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Konu : Bilgi"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                          "Anakart (İngilizce: mainboard, motherboard, baseboard, system board veya planar board), modern bir bilgisayar gibi karmaşık bir elektronik sistemin birincil ve..."),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => anakartneyeyarar())),
                            child: Text(
                              "Yazıya Git",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Text("45"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up),
                          color: Colors.green,
                        ),
                        Text("51"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_down),
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.red,
                      height: 12,
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // boşluk
                    Image.network(
                        "https://www.eniyilerlistesi.com/wp-content/uploads/2020/04/4k-icin-en-iyi-ekran-kartlari.jpg"),
                    ListTile(
                      leading: Icon(
                        Icons.fiber_new_outlined,
                        color: Colors.blueGrey,
                        size: 40,
                      ),
                      title: Text(
                        "Ekran Kartı Neye Yarar ?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Konu : Bilgi"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                          "Ekran kartı, bilgisayarın görüntü vermesini sağlayan birimidir. Ekran kartları harici ISA, VLB, PCI, AGP veya PCI-Express veriyollarını kullanan PC kartları olarak anakart, üzerinde..."),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ekrankartineyeyarar())),
                            child: Text(
                              "Yazıya Git",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Text("418"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up),
                          color: Colors.green,
                        ),
                        Text("20"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_down),
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.blueGrey,
                      height: 12,
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // boşluk
                    Image.network(
                        "https://s.eticaretbox.com/466/pictures/YTMMSNJEKO892019102936_MPG-SEKIRA-500X-4.jpg"),
                    ListTile(
                      leading: Icon(
                        Icons.fiber_new_outlined,
                        color: Colors.lightGreen,
                        size: 40,
                      ),
                      title: Text(
                        "Bilgisayar Kasası Neye Yarar ?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Konu : Bilgi"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                          "Bilgisayar kasası, içine yerleştirilecek olan bilgisayar bileşenlerini dışarıdan gelebilecek fiziksel darbelere karşı korur, elektriksel olarak yalıtır, sahip olduğu fanlarla içerideki sıcak havayı dışarı atar. İçinde 1 tane anakart takma tepsisi, güç..."),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        bilgisayarkasasineyeyarar())),
                            child: Text(
                              "Yazıya Git",
                              style: TextStyle(
                                  color: Colors.lightGreen,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Text("42"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up),
                          color: Colors.green,
                        ),
                        Text("51"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_down),
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.lightGreen,
                      height: 12,
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // boşluk
                    Image.network(
                        "https://images-na.ssl-images-amazon.com/images/I/71UCxdA0sWL._AC_SL1500_.jpg"),
                    ListTile(
                      leading: Icon(
                        Icons.fiber_new_outlined,
                        color: Colors.lightBlue,
                        size: 40,
                      ),
                      title: Text(
                        "Güç Kaynağı(PSU) Neye Yarar ?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Konu : Bilgi"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                          "Güç kaynağı, bir sistem ya da düzeneğin gereksinimi olan enerjiyi sağlamak için kullanılan birimlerin genel adı[1]. Cep telefonu ya da el feneri pili, bir pili doldurmak için kullanılan adaptör, bir bilgisayarın gereksinimi olan gücü üreten donanım birer güç..."),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        guckasasineyeyarar())),
                            child: Text(
                              "Yazıya Git",
                              style: TextStyle(
                                  color: Colors.lightBlue,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Text("16"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up),
                          color: Colors.green,
                        ),
                        Text("59"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_down),
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.lightBlue,
                      height: 12,
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // boşluk
                    Image.network(
                        "https://www.netsiparis.com/Resim/0x0/seagate-mobil-hdd-2tb-st2000lm007-sabit-disk__73927-2.jpg"),
                    ListTile(
                      leading: Icon(
                        Icons.fiber_new_outlined,
                        color: Colors.purple,
                        size: 40,
                      ),
                      title: Text(
                        "Sabit Disk Ne İşe Yarar ?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Konu : Bilgi"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                          "Sabit disk ya da Hard disk kısaca HDD ya da Türkçesi ile sabit disk sürücüsü veri depolanması amacı ile kullanılan manyetik kayıt ortamlarıdır. Önceleri büyük boyutları ve yüksek fiyatları nedeni ile sadece bilgisayar merkezlerinde kullanılan sabit diskler, cep..."),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        sabitdiskneyeyarar())),
                            child: Text(
                              "Yazıya Git",
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Text("92"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up),
                          color: Colors.green,
                        ),
                        Text("14"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_down),
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.purple,
                      height: 12,
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // boşluk
                    Image.network(
                        "https://cdn.akakce.com/classone/classone-g6-6-led-fanli-usb-2-0-14-17-notebook-sogutucu-z.jpg"),
                    ListTile(
                      leading: Icon(
                        Icons.fiber_new_outlined,
                        color: Colors.red,
                        size: 40,
                      ),
                      title: Text(
                        "Soğutu Fan Ne İşe Yarar ?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Konu : Bilgi"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                          "Bir bilgisayar sisteminin parçaları çalışma esnasında oldukça yüksek miktarda ısı oluşturmaktadır. Bu ısı yüksek oranda işlemci, yonga, ekran kartı ve sabit diskler gibi tümleşik devreler tarafından açığa çıkarılsa da, aslında kasa içerisindeki tüm devreler tarafından da katkı görmektedir. Kasa içerisindeki sıcaklık makul seviyelere indirilmediği müddetçe parçaların verimli..."),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        sogutucufanneyeyarar())),
                            child: Text(
                              "Yazıya Git",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Text("233"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up),
                          color: Colors.green,
                        ),
                        Text("35"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_down),
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.red,
                      height: 12,
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // boşluk
                    Image.network(
                        "https://iasbh.tmgrup.com.tr/fb619b/740/479/0/0/400/259?u=https://isbh.tmgrup.com.tr/sbh/2019/06/30/ses-karti-alirken-nelere-dikkat-etmek-gerekir-bilgisayar-ses-karti-satin-alirken-dikkat-etmeniz-gereken-ozellikler-1561919423165.jpg"),
                    ListTile(
                      leading: Icon(
                        Icons.fiber_new_outlined,
                        color: Colors.blueGrey,
                        size: 40,
                      ),
                      title: Text(
                        "Ses Kartı Neye Yarar ?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Konu : Bilgi"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                          "Dahili olarak PCI- veya PCI-Express kart yuvalarına takılan kart türleri olduğu gibi, harici olarak USB bağlantı noktasına bağlanan, pcmcia yuvalarına takılan ve profesyonel alanlarda kullanılmak üzere Güvenlik duvarı girişine de bağlanabilen versiyonları..."),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => seskartineyeyarar())),
                            child: Text(
                              "Yazıya Git",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Text("5"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_up),
                          color: Colors.green,
                        ),
                        Text("187"),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.thumb_down),
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.blueGrey,
                      height: 12,
                      thickness: 2,
                      indent: 30,
                      endIndent: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              );
            }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections),
            label: 'Galeri',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ayarlar',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightGreen,
        onTap: _onItemTapped,
      ),
    );
  }
}

class bilgisayarintarihi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Bilgisayarın Tarihi"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://i.pinimg.com/originals/29/17/c4/2917c4ac6d657289fc29f390703ce0ad.jpg",
                      width: 350,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Bilgisayarın Dünden Bugüne Tarihi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Bilgisayar, kendisine programlama yoluyla komuta edilmiş bir dizi aritmetik ya da mantık işlemini otomatik olarak yapabilen bir makinedir. Günümüz bilgisayarları, program adı verilen genelleştirilmiş işlem kümelerini izleme yeteneğine sahiptir. Bu programlar, bilgisayarların çok çeşitli görevleri yerine getirmesini sağlar. Tam işletim için gerekli olan ve kullanılan donanım, işletim sistemi (ana yazılım) ve çevresel ekipmanı içeren eksiksiz bir bilgisayar, bir bilgisayar sistemi olarak adlandırılabilir. Bu terim, birbirine bağlı ve birlikte çalışan bir grup bilgisayar, özellikle bir bilgisayar ağı veya bilgisayar kümesi için de kullanılabilir. İlk elektrikli bilgisayar ENIAC'tır.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Bilgisayarlar, tarih boyunca, çok farklı biçimlerde karşımıza çıkmışlardır. 20. yüzyılın ortalarındaki ilk bilgisayarlar büyük bir oda büyüklüğünde olup, günümüz bilgisayarlarından yüzlerce kat daha fazla güç tüketiyorlardı. 21. yüzyılın başına varıldığında ise bilgisayarlar bir kol saatine sığacak ve küçük bir pil ile çalışacak duruma geldiler. Bu kadar küçük imal edilebilmelerinin temel nedeni 1969 yılında yarı iletkenler ile çok küçük alanlara sığdırılabilen devreler yapılabilmesidir. Intel'in ilk işlemci unvanına sahip olan 4004'ten sonra bilgisayar teknolojisi hız kazanmıştır. Toplumumuz kişisel bilgisayarı ve onun taşınabilir eşdeğeri, dizüstü bilgisayarını, bilgi çağının simgeleri olarak tanıdılar ve bilgisayar kavramıyla özdeşleştirdiler. Günümüzde çok yaygın kullanılmaktadırlar. Bilgisayarın temel çalışma prensibi ikili sayı sistemi yani sadece 0 ve 1'den oluşan kodlamalardır.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class islemcineyeyarar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("İşlemci Neye Yarar ?"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://pixelz.cc/wp-content/uploads/2016/11/cpu-processor-uhd-4k-wallpaper.jpg",
                      width: 350,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "İşlemci Neye Yarar ?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Merkezî işlem birimi (Türkçe kısaltması MİB, İngilizce: Central Process Unit ya da kısaca CPU), dijital bilgisayarların veri işleyen ve yazılım komutlarını gerçekleştiren bölümüdür. Çalıştırılmakta olan yazılımın içinde bulunan komutları işler. Mikroişlemciler ise tek bir yonga içine yerleştirilirmiş bir merkezî işlem birimidir. 1970'lerin ortasından itibaren gelişen mikroişlemciler ve bunların kullanımı, günümüzde MİB teriminin genel olarak mikroişlemciler yerine de kullanılması sonucunu doğurmuştur.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Merkezî işlem birimi aritmetik ve mantıksal işlem yapma yeteneğine sahiptir. Giriş ve çıkış birimleri arasında verilen yazılım ile uygun çalışmayı sağlar. MİB, makine dili denilen düşük seviyeli kodlama sistemi ile çalışır; bu kodlama sistemi bilgisayarın algılayabileceği işlem kodlarından oluşur. Bir mikroişlemcinin algılayabileceği kodların tamamına o işlemcinin komut kümesi denir.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ramneyeyarar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Ram Neye Yarar?"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/d/db/Swissbit_2GB_PC2-5300U-555.jpg",
                      width: 350,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Ram Neye Yarar?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Rastgele erişimli hafıza (İng. İngilizce: Random Access Memory, RAM) mikroişlemcili sistemlerde kullanılan ve genellikle çalışma verilerini ve makine kodunu depolamak için kullanılan herhangi bir sırada okunabilen ve değiştirilebilen bir tür veri deposudur. Buna karşın diğer hafıza aygıtları (manyetik kasetler, diskler) saklama ortamındaki verilere önceden belirlenen bir sırada ulaşabilmektedir, çünkü mekanik tasarımları ancak buna izin vermektedir.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Bir RAM yongasında herhangi farklı iki veriye ulaşmak için aşağı yukarı aynı süre harcanmaktadır. Buna karşılık disk ve benzerleri okunan verinin başı bulunan noktaya yakınsa az zaman, uzaksa çok zaman harcamakta ve baş konumu sürekli yer değiştirmektedir.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class anakartneyeyarar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Anakart Hakkında Bilinmeyenler ?"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://pchocasi.com.tr/wp-content/uploads/2015/11/msi-anakart-1200x900.jpg",
                      width: 350,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Anakart Hakkında Bilinmeyenler ?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Anakart (İngilizce: mainboard, motherboard, baseboard, system board veya planar board), modern bir bilgisayar gibi karmaşık bir elektronik sistemin birincil ve en merkezî baskılı devre kartıdır. Apple bilgisayarlardaki muadiline logic board (lojik kart) denir ve bazen mobo olarak kısaltılır.[1] Fiziksel yapı olarak anakartlar özel alaşımlı bir blok üzerine yerleştirilmiş ve üzerinde RAM yuvaları genişleme kartı slotları devreler ve yongalar bulunan kare şeklinde bir plakadır. Bu plaka çalışma sistemini organize eder. Bu organizasyon anakart üzerindeki yonga setleri sayesinde olur.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Kişisel bilgisayarlarda 486-PIII seri arasında veri yollarında çok büyük değişmeler olmuştur. 486’larda veri yolu olarak ISA VESA kullanılmıştır. Bu veri yolu artık kullanılmamaktadır. 486’ların son nesilleri Intel Pentium PCI veri yolu üzerinde çalıştılar. PCI veri yolu ISA-VESA veri yolundan daha hızlıdır. Sistemin hızlı olması sayesinde grafik arabirimleri kontrol kartları ve genişletme karlarından çok daha performans sağlanmasına yol açmıştır. Bununla yetinmeyen insanoğlu artık hızına hız katarak AGP veri slotunu kullanmakta ve veri transferine hız katmıştır. PII serisinde yaklaşık bir tane ISA ortalama beş tane PCI ve birtane AGP slotu kullanılmıştır",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ekrankartineyeyarar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Ekran Kartı Neye Yarar ?"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://www.eniyilerlistesi.com/wp-content/uploads/2020/04/4k-icin-en-iyi-ekran-kartlari.jpg",
                      width: 350,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Ekran Kartı Neye Yarar ?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Ekran kartı, bilgisayarın görüntü vermesini sağlayan birimidir. Ekran kartları harici ISA, VLB, PCI, AGP veya PCI-Express veriyollarını kullanan PC kartları olarak anakart, üzerinde chipset veya CPU içerisinde yerleşik olarak bulunmaktadır.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Günümüzde ekran kartı üreten 3 firma vardır. AMD, NVIDIA ve Intel'dir. Yaygın olarak bilinen ve kullanılan GPU serileri ise şunlardır; AMD Radeon RX, NVIDIA GeForce GTX ve NVIDIA GeForce RTX serisi GPU'lardır.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class bilgisayarkasasineyeyarar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Bilgisayar Kasası Neye Yarar ?"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://s.eticaretbox.com/466/pictures/YTMMSNJEKO892019102936_MPG-SEKIRA-500X-4.jpg",
                      width: 350,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Bilgisayar Kasası Neye Yarar ?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Bilgisayar kasası, içine yerleştirilecek olan bilgisayar bileşenlerini dışarıdan gelebilecek fiziksel darbelere karşı korur, elektriksel olarak yalıtır, sahip olduğu fanlarla içerideki sıcak havayı dışarı atar. İçinde 1 tane anakart takma tepsisi, güç kaynağı yuvası, sabit disk ve CD-ROM sürücü gibi aygıtların yerleştirilebildiği 5,25 ve 3,5 inçlik yuvalar, arka tarafında soket boşlukları vardır.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "1 tane yeniden başlatma, 1 açma düğmesi ve 1 tane de kilit düğmesine sahip olabilir. Yatay ve dikey yerleştirilebilenleri, alüminyum veya çelikten yapılanları, birkaç farklı boyda olanları vardır.Bilgisayar kasası bilgisayarın aynı zamanda sistem birimidir.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class guckasasineyeyarar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Güç Kaynağı(PSU) Neye Yarar ?"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://images-na.ssl-images-amazon.com/images/I/71UCxdA0sWL._AC_SL1500_.jpg",
                      width: 350,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Güç Kaynağı(PSU) Neye Yarar ?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Bilgisayar güç kaynağı, bilgisayarın dahili bileşenleri için şebeke AC'sini düşük voltajla düzenlenmiş DC gücüne dönüştüren bir kaynaktır. Modern kişisel bilgisayarlar evrensel olarak anahtarlamalı güç kaynaklarını kullanır. Bazı güç kaynaklarında giriş voltajını seçmek için manuel bir anahtar bulunurken, diğerleri otomatik olarak şebeke voltajına uyum sağlar.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class sabitdiskneyeyarar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Sabit Disk Ne İşe Yarar ?"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://www.netsiparis.com/Resim/0x0/seagate-mobil-hdd-2tb-st2000lm007-sabit-disk__73927-2.jpg",
                      width: 350,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Sabit Disk Ne İşe Yarar ?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Sabit disk ya da Hard disk kısaca HDD ya da Türkçesi ile sabit disk sürücüsü veri depolanması amacı ile kullanılan manyetik kayıt ortamlarıdır. Önceleri büyük boyutları ve yüksek fiyatları nedeni ile sadece bilgisayar merkezlerinde kullanılan sabit diskler, cep telefonları ve sayısal fotoğraf makineleri içine sığabilecek kadar küçülen boyutları ile günlük hayatımıza girmişlerdir.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Sabit disklerin en yoğun kullanım yeri bilgisayarlardır. Ses, görüntü, yazılımlar, veritabanları gibi büyük miktarlarda bilgi, gerektiğinde kullanılmak üzere sabit disklerde saklanır. Günümüzde sabit diskler veri aktarımında son derece hızlanmış olsalar da elektromekanik yapıda olduklarından RAM'lara göre yavaştırlar. Bilgisayarlarda yardımcı ve kalıcı bellek olarak kullanılırlar. Bir bilgisayar yazılımı işletilmeye başladığında, yazılımın çalışması için gerekli olan bilgiler sabit diskten okunarak çok daha hızlı olan RAM belleğe aktarılır. Gereksinim duyulan kısım RAM'a sığmayacak kadar büyükse, bilgisayar sabit diskin bir bölümünü RAM bellek gibi kullanır.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Bilgisayar sabit diskleri genellikle bilgisayarların içinde sabitlenmiş durumda bulunurlar, bilgisayarlara dışarıdan bağlanabilen taşınabilir olanları da vardır.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class sogutucufanneyeyarar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Soğutucu Fan Ne İşe Yarar ?"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://cdn.akakce.com/classone/classone-g6-6-led-fanli-usb-2-0-14-17-notebook-sogutucu-z.jpg",
                      width: 350,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Soğutucu Fan Ne İşe Yarar ?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Bilgisayar soğutma, bilgisayarı oluşturan donanımların bütünen veya kısmen açığa çıkardığı ısıyı bertaraf etme tekniklerinin uygulanması işlemidir.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Bir bilgisayar sisteminin parçaları çalışma esnasında oldukça yüksek miktarda ısı oluşturmaktadır. Bu ısı yüksek oranda işlemci, yonga, ekran kartı ve sabit diskler gibi tümleşik devreler tarafından açığa çıkarılsa da, aslında kasa içerisindeki tüm devreler tarafından da katkı görmektedir. Kasa içerisindeki sıcaklık makul seviyelere indirilmediği müddetçe parçaların verimli ve güvenli çalışması tehlikeye girmektedir. Günümüzde oldukça küçülmüş bilgisayar boyutları ve bunun yanında ileri üretim teknolojisi ısı oluşumunu ve ısının bertaraf edilmesini kolaylaştırsa da, bu işlem için özel birimler kullanılması yaygındır. Bu özel birimler içinde yine yaygın olarak ısının dağıtıldığı yüzeyin artırılması amacı ile kullanılan ısı yayıcılar (heat sink) ve hava sirkülasyonunun iyileştirimesi amacı ile kullanılan fanlar çoğunluğu teşkil etmektedirler. Son dönemlerde kullanıcının kontrolüne açılan bir diğer teknik ise yazılımsal soğutma (softcooling) adı verilen, donanımın performansını düşürerek açığa çıkan ısıyı doğrudan azaltma amacı taşıyan fabrika çıkışlı bir yöntemdir. Yine son dönemde bilgisayar meraklıları tarafından, daha önce motorlu taşıtlarda kullanılan radyatör, akvaryum sistemlerinde kullanılan pompa ve genel amaçlı sıvı hortumları bilgisayar soğutma amacına adanmış olarak kullanılmaktadır. Bu yaklaşım sonucunda, birçok firma bu tür sistemleri parça bazında veya tümleşik çözümler şeklinde üreterek satışa çıkarmıştır. Bu yönteme yaygın olarak sıvı soğutma adı verilmektedir.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class seskartineyeyarar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Ses Kartı Neye Yarar ?"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://iasbh.tmgrup.com.tr/fb619b/740/479/0/0/400/259?u=https://isbh.tmgrup.com.tr/sbh/2019/06/30/ses-karti-alirken-nelere-dikkat-etmek-gerekir-bilgisayar-ses-karti-satin-alirken-dikkat-etmeniz-gereken-ozellikler-1561919423165.jpg",
                      width: 350,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Ses Kartı Neye Yarar ?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.lightGreen,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Ses kartı, bilgisayarda analog ve dijital ses işlevlerini yerine getiren elektronik birimidir..",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      width: 380,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Dahili olarak PCI- veya PCI-Express kart yuvalarına takılan kart türleri olduğu gibi, harici olarak USB bağlantı noktasına bağlanan, pcmcia yuvalarına takılan ve profesyonel alanlarda kullanılmak üzere Güvenlik duvarı girişine de bağlanabilen versiyonları mevcuttur. Eski ses kartları ISA yuvalarına takılabilirler. Ayrıca anakart üzerinde bütünleşik sunulan ses yongaları da mevcuttur.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
