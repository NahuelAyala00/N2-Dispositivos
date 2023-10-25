import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: MyHomePage(),
      routes: {
        '/home': (context) => HomeScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://images.prestigeonline.com/wp-content/uploads/sites/6/2022/07/07170204/untitled-design-2022-06-22t184057-090-2.jpeg?tr=w-1920',
              width: 400, // Defina a largura desejada para a imagem
              height: 400, // Defina a altura desejada para a imagem
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 00.0, 16.0, 20.0),
              child: Text(
                'Where Style\nMeets Comfort',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0.0, 16.0, 20.0),
              child: Text(
                'Join us to celebrate stylish, comfy footwear. Your path to extraordinary style begins here.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/home');
              },
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 23),
                padding: EdgeInsets.all(15.0),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Center(
                  child: Text('Get Started'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20.0),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.black],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
            padding: EdgeInsets.only(left: 20.0, top: 30.0, right: 50.0, bottom: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Text(
                  'Footwear Elegance Collection',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Men Shoes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0), // Espaçamento entre o bloco de título e o carrossel

          // Carrossel
          CarouselSlider(
            items: [
              // Slide 0
              Container(
                width: double.infinity, // Largura total da imagem
                height: 200.0, // Altura desejada para a imagem

                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1.0,
                    ),
                  ),
                  child: SizedBox(
                    width: 250, // Defina a largura desejada
                    height: 280, // Defina a altura desejada
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 200, // Defina a largura máxima desejada para a imagem
                            maxHeight: 200, // Defina a altura máxima desejada para a imagem
                          ),
                          child: AspectRatio(
                            aspectRatio: 1.0 / 1.0,
                            child: Padding(
                              padding: EdgeInsets.only(left: 30.0), // Espaço à esquerda da imagem
                              child: Align(
                                alignment: Alignment.center, // Centralize a imagem
                                child: Image.network(
                                  'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 0.0, 16.0, 0.0),
                            child: InkWell(
                              onTap: () {
                                // Adicione aqui a navegação para a outra página
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => BlankPage()),
                                );
                              },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Ultraboost \nShoes", // Substitua pelo nome do produto
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Men\'s running',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  '\$200', // Substitua pelo preço
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Slide 1 com o título "Ultraboost Shoes"
              Container(
                width: double.infinity, // Largura total da imagem
                height: 200.0, // Altura desejada para a imagem

                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color: Colors.grey.shade300,
                      width: 2.0,
                    ),
                  ),
                  child: SizedBox(
                    width: 250, // Defina a largura desejada
                    height: 280, // Defina a altura desejada
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 200, // Defina a largura máxima desejada para a imagem
                            maxHeight: 200, // Defina a altura máxima desejada para a imagem
                          ),
                          child: AspectRatio(
                            aspectRatio: 1.0 / 1.0,
                            child: Padding(
                              padding: EdgeInsets.only(left: 30.0), // Espaço à esquerda da imagem
                              child: Align(
                                alignment: Alignment.center, // Centralize a imagem
                                child: Image.network(
                                  'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 0.0, 16.0, 0.0),
                            child: InkWell(
                              onTap: () {
                                // Adicione aqui a navegação para a outra página
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => BlankPage()),
                                );
                              },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Ultraboost \nShoes", // Substitua pelo nome do produto
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Men\'s running',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  '\$200', // Substitua pelo preço
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Adicione mais slides conforme necessário
            ],
            options: CarouselOptions(
              height: 350.0, // Altura fixa do carrossel
              aspectRatio: 16 / 9,
              viewportFraction: 0.7,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(height: 10.0), // Espaçamento abaixo do carrossel
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Latest Shoes',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ação para o botão "Show all"
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.grey[400],
                    elevation: 0.0,
                  ),
                  child: Text('Show all >'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0), // Espaçamento entre o título e os containers
          // Containers pequenos alinhados horizontalmente
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.white, // Fundo branco
                  borderRadius: BorderRadius.circular(20.0), // Raio de 40 pixels, correspondente ao do Card
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 2.0, // Largura da borda
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(4.0), // Espaço entre a imagem e a borda
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38.0), // Ajuste conforme necessário para manter o raio da imagem menor do que o raio do contêiner pai
                  ),
                  child: Image.network(
                    'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x',
                    fit: BoxFit.cover,
                  ),
                ),
              ),


              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.white, // Fundo branco
                  borderRadius: BorderRadius.circular(20.0), // Raio de 40 pixels, correspondente ao do Card
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 2.0, // Largura da borda
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(4.0), // Espaço entre a imagem e a borda
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38.0), // Ajuste conforme necessário para manter o raio da imagem menor do que o raio do contêiner pai
                  ),
                  child: Image.network(
                    'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.white, // Fundo branco
                  borderRadius: BorderRadius.circular(20.0), // Raio de 40 pixels, correspondente ao do Card
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 2.0, // Largura da borda
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(4.0), // Espaço entre a imagem e a borda
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38.0), // Ajuste conforme necessário para manter o raio da imagem menor do que o raio do contêiner pai
                  ),
                  child: Image.network(
                    'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.white, // Fundo branco
                  borderRadius: BorderRadius.circular(20.0), // Raio de 40 pixels, correspondente ao do Card
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 2.0, // Largura da borda
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(4.0), // Espaço entre a imagem e a borda
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38.0), // Ajuste conforme necessário para manter o raio da imagem menor do que o raio do contêiner pai
                  ),
                  child: Image.network(
                    'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


Future<void> addToCart() async {
  // Inicialize o Firebase (certifique-se de que isso foi feito em outro lugar do seu código).
  await Firebase.initializeApp();

  final itemData = {
    'Nome': 'Ultraboost Shoes',
    'Price': '\$200',
  };

  try {
    await FirebaseFirestore.instance
        .collection('collection') // Nome da coleção
        .doc('UltraboostShoes') // Nome do documento
        .set(itemData); // Dados a serem definidos no documento
    print('Item adicionado com sucesso!');
  } catch (e) {
    print('Erro ao adicionar item: $e');
  }
}



class BlankPage extends StatefulWidget {
  @override
  _BlankPageState createState() => _BlankPageState();
}

class _BlankPageState extends State<BlankPage> {
  int selectedSizeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Define o fundo como branco
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Voltar à página anterior
          },
        ),
        title: Text(
          'Men Shoes',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            onPressed: () {
              // Adicione ação para o ícone de três pontos aqui
            },
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2, // Dois guias: Descrição e Detalhes
        child: ListView(
          children: [
            Container(
              width: double.infinity, // Largura total da imagem
              height: 200.0, // Altura desejada para a imagem
              decoration: BoxDecoration(
                color: Colors.white, // Fundo branco
                borderRadius: BorderRadius.circular(10.0), // Borda arredondada
                image: DecorationImage(
                  image: NetworkImage(
                    'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0), // Espaçamento interno do container abaixo da imagem
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ultraboost Shoes',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Men's Running",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 10.0), // Espaçamento entre o texto e as estrelas
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                              SizedBox(width: 5.0), // Espaçamento entre as estrelas e o número
                              Text(
                                '5,0',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        '\$200',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0), // Espaçamento entre o título e o subtítulo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Posiciona os elementos à direita
                    children: [
                      Text(
                        'Colours',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.blueGrey,
                        ),
                      ),
                      SizedBox(width: 5.0), // Espaçamento entre o texto e as bolas
                      Container(
                        width: 20.0, // Largura da primeira bola
                        height: 20.0, // Altura da primeira bola
                        decoration: BoxDecoration(
                          color: Colors.grey, // Cor da primeira bola
                          shape: BoxShape.circle, // Formato de círculo
                        ),
                      ),
                      SizedBox(width: 5.0), // Espaçamento entre as bolas
                      Container(
                        width: 20.0, // Largura da segunda bola
                        height: 20.0, // Altura da segunda bola
                        decoration: BoxDecoration(
                          color: Colors.black, // Cor da segunda bola
                          shape: BoxShape.circle, // Formato de círculo
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.0), // Espaçamento entre o subtítulo e o conteúdo
                  Row(
                    children: [
                      Text(
                        'Select a size',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        '(view size guide)',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 5.0), // Espaçamento entre o texto e as bolinhas
                  Row(
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedSizeIndex == 0 ? Colors.black : Colors.white, // Cor da primeira bolinha
                          border: Border.all(color: Colors.black), // Borda preta
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedSizeIndex = 0;
                            });
                          },
                          child: Center(
                            child: Text(
                              '38',
                              style: TextStyle(
                                color: selectedSizeIndex == 0 ? Colors.white : Colors.black, // Cor do texto
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0), // Espaçamento entre as bolinhas
                      // Adicione outras bolinhas aqui com a mesma estrutura
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedSizeIndex == 1 ? Colors.black : Colors.white, // Cor da segunda bolinha
                          border: Border.all(color: Colors.black), // Borda preta
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedSizeIndex = 1;
                            });
                          },
                          child: Center(
                            child: Text(
                              '39',
                              style: TextStyle(
                                color: selectedSizeIndex == 1 ? Colors.white : Colors.black, // Cor do texto
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0), // Espaçamento entre as bolinhas
                      // Adicione outras bolinhas aqui com a mesma estrutura
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedSizeIndex == 2 ? Colors.black : Colors.white, // Cor da terceira bolinha
                          border: Border.all(color: Colors.black), // Borda preta
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedSizeIndex = 2;
                            });
                          },
                          child: Center(
                            child: Text(
                              '40',
                              style: TextStyle(
                                color: selectedSizeIndex == 2 ? Colors.white : Colors.black, // Cor do texto
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0), // Espaçamento entre as bolinhas
                      // Adicione outras bolinhas aqui com a mesma estrutura
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedSizeIndex == 3 ? Colors.black : Colors.white, // Cor da quarta bolinha
                          border: Border.all(color: Colors.black), // Borda preta
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedSizeIndex = 3;
                            });
                          },
                          child: Center(
                            child: Text(
                              '41',
                              style: TextStyle(
                                color: selectedSizeIndex == 3 ? Colors.white : Colors.black, // Cor do texto
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0), // Espaçamento entre as bolinhas
                      // Adicione outras bolinhas aqui com a mesma estrutura
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedSizeIndex == 4 ? Colors.black : Colors.white, // Cor da quinta bolinha
                          border: Border.all(color: Colors.black), // Borda preta
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedSizeIndex = 4;
                            });
                          },
                          child: Center(
                            child: Text(
                              '42',
                              style: TextStyle(
                                color: selectedSizeIndex == 4 ? Colors.white : Colors.black, // Cor do texto
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0), // Espaçamento entre as bolinhas
                      // Adicione outras bolinhas aqui com a mesma estrutura
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedSizeIndex == 5 ? Colors.black : Colors.white, // Cor da sexta bolinha
                          border: Border.all(color: Colors.black), // Borda preta
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedSizeIndex = 5;
                            });
                          },
                          child: Center(
                            child: Text(
                              '43',
                              style: TextStyle(
                                color: selectedSizeIndex == 5 ? Colors.white : Colors.black, // Cor do texto
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0), // Espaçamento entre as bolinhas e a descrição
                  Row(
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Details',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10.0), // Espaçamento entre o título e a descrição
                  Text(
                    'Lorem Sed et mauris id metus auctor rhoncus. Suspendisse semper velit vel ligula bibendum, eget interdum dolor euismod. orem Sed et mauris id metus auctor rhoncus. Suspendisse semper velit vel ligula bibendum, eget interdumorem Sed et mauris id metus auctor rhoncus. Suspendisse semper velit vel ligula bibendum, eget interdum',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20.0), // Espaçamento entre a descrição e o botão
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        addToCart();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return NextPage(); // Substitua "NextPage" pelo nome da página para a qual você deseja redirecionar.
                            },
                          ),
                        );

                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // Cor de fundo do botão
                        onPrimary: Colors.white, // Cor do texto do botão
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0), // Borda circular
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          'Shop now',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  Future<List<Widget>> listCart() async {
    try {
      CollectionReference cardapioCollection = FirebaseFirestore.instance.collection('collection');
      QuerySnapshot querySnapshot = await cardapioCollection.get();

      List<Widget> items = [];

      if (querySnapshot.docs.isNotEmpty) {
        for (QueryDocumentSnapshot doc in querySnapshot.docs) {
          Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

          if (data.containsKey('Nome') && data.containsKey('Price')) {
            String produto = data['Nome'];
            String preco = data['Price'];

            items.add(
              Column(
                children: <Widget>[
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      side: BorderSide(
                        color: Colors.grey.shade300,
                        width: 1.0,
                      ),
                    ),
                    child: SizedBox(
                      width: 250, // Defina a largura desejada
                      height: 280, // Defina a altura desejada
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: 200, // Defina a largura máxima desejada para a imagem
                              maxHeight: 200, // Defina a altura máxima desejada para a imagem
                            ),
                            child: AspectRatio(
                              aspectRatio: 1.0 / 1.0,
                              child: Image.network(
                                'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 1.0, 16.0, 0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    produto,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(
                                    preco,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color:  Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        }
      } else {
        items.add(const Text('Carrinho vazio'));
      }

      return items;
    } catch (e) {
      return [Text('Erro ao buscar dados: $e')];
    }
  }

  // Função para limpar a coleção cardapio
  void clearCartCollection() {
    CollectionReference cartCollection = FirebaseFirestore.instance.collection('collection');

    // Obtém todos os documentos da coleção
    cartCollection.get().then((querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        // Deleta cada documento individualmente
        doc.reference.delete();
      });
    }).catchError((error) {
      print('Erro ao limpar o carrinho: $error');
    });
  }

  // Função para completar o pedido
  void completeOrder() {
    // Implemente a ação que desejar quando o botão for pressionado
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: 16.0,
              top: 40.0,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.grey,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
              ),
            ),
            const Positioned(
              top: 80.0,
              left: 16.0,
              right: 16.0,
              child: Text(
                'Shopping cart',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 20.0,
              top: 150.0,
              right: 10.0,
              child: SizedBox(
                child: FutureBuilder<List<Widget>>(
                  future: listCart(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else {
                      return Column(
                        children: snapshot.data ?? [],
                      );
                    }
                  },
                ),
              ),
            ),
            Positioned(
              right: 0.0,
              top: 30.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.08,
                child: InkWell(
                  onTap: () {
                    // Limpar a coleção cardapio
                    clearCartCollection();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Positioned(
                        left: 16.0,
                        top: 40.0,
                        child: IconButton(
                          icon: const Icon(
                            Icons.delete,
                            size: 30,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            clearCartCollection();
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NextPage()));
                          },
                        ),
                      ),
                      SizedBox(width: 8.0), // Espaço entre o ícone e o texto

                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              left: 20.0,
              bottom: 20.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.08,
                child: ElevatedButton(
                  onPressed: () {
                    // Completar o pedido
                    completeOrder();
                  },
                  style: ElevatedButton.styleFrom(
                    primary:  Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),


                  ),
                  child: const Text(
                    'Complete Order',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
