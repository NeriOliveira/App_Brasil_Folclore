// @dart=2.9
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(const Main());
}

// ⬇⬇ SPLASHSCREEN ⬇⬇
class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Login(),
      title: Text(
        'Folclore Brasileiro',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          color: Colors.brown, //CorOriginal: #0470B8
        ),
      ),
      image: Image.asset("assets/imagem/splashscreen.webp"),
      photoSize: 200,
      backgroundColor: Colors.lightGreen[300],
      loaderColor: Colors.black54,
      loadingText: Text(
        "Carregando...",
        style: TextStyle(
          color: Colors.black54,
          fontSize: 16,
        ),
      ),
    );
  }
}
// ⬆⬆ SPLASHSCREEN ⬆⬆

// ⬇⬇ MAIN ⬇⬇
class Main extends StatelessWidget {
  const Main({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => MySplashScreen(),
        "home": (context) => PaginaHome(),
        "saci": (context) => PaginaSaci(),
        "iara": (context) => PaginaIara(),
        "curupira": (context) => PaginaCurupira(),
        "boto": (context) => PaginaBoto(),
        "boitata": (context) => PaginaBoitata(),
        "mula": (context) => PaginaMula(),
        "lobisomem": (context) => PaginaLobisomem(),
      },
    );
  }
}

// ⬇⬇ LOGIN ⬇⬇
class Login extends StatelessWidget {
  //const Login({Key? key}) : super(key: key);
  String senha = "";
  String login = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imagem/fundo2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("assets/imagem/capa.png"),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Text("Login: admin | Senha: admin"),
              TextField(
                onChanged: (Text) {
                  login = Text;
                  print(login);
                },
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Login',
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                onChanged: (Text) {
                  senha = Text;
                  print(senha);
                },
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'senha',
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextButton(
                onPressed: () {
                  if (login == "admin" && senha == "admin") {
                    print("Entrada autorizada");
                    //comando para entrar navegar para próxima pagina
                    Navigator.popAndPushNamed(context, "home");
                  } else {
                    print("Email ou senha incorreto");
                  }
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green, //cor do fundo

                  onSurface: Colors.grey,
                  padding: const EdgeInsets.all(20), //margem no botão ou
                  //fixedSize: const Size(100, 100), //tamanho fixo da margem
                  shape: RoundedRectangleBorder(
                    //side: BorderSide(color: Colors.green, width: 5), // borda do botão
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text("  Login  "),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(40)),
        Text("Desenvolvido por:",
            style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Patrick Neri de Oliveira"),
        Container(child: Image.asset("assets/imagem/copia.png", scale: 7)),
        Padding(padding: EdgeInsets.all(10)),
        Text("Agradecimentos:", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Profº Bruno Rafael Rodrigues"),
        Text("Profª Rita Barbosa"),
        Text("Min. Astronauta Marcos Pontes"),
        Padding(padding: EdgeInsets.all(10)),
        Container(child: Image.asset("assets/imagem/fit.jpg", scale: 7)),
        Padding(padding: EdgeInsets.all(5)),
        Container(
            child: Image.asset("assets/imagem/mcti_futuro.jpg", scale: 1.5)),
        Padding(padding: EdgeInsets.all(5)),
        Container(
            child: Image.asset("assets/imagem/mcti_futuro_2.jpg", scale: 2)),
        Padding(padding: EdgeInsets.all(10)),
        Container(child: Image.asset("assets/imagem/brasil.gif", scale: 2)),
      ],
    );
  }
}

class PaginaHome extends StatelessWidget {
  const PaginaHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[300],
      appBar: AppBar(
        title: Text("Menu de Personagens"),
        backgroundColor: Colors.lime[900],
      ),
      drawer: Drawer(
        child: Menu(),
      ),
      body: Container(
        child: conteudoPaginaHome(),
      ),
    );
  }
}

class conteudoPaginaHome extends StatelessWidget {
  const conteudoPaginaHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: (Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Image.asset("assets/imagem/capa.png"),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 150,
                    width: 100,
                    color: Colors.brown[200],
                    child: Image.asset("assets/imagem/saci_3.png")),
                Padding(padding: EdgeInsets.all(15)),
                TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "saci");
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.brown, //cor do fundo
                    onSurface: Colors.grey,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.lime[900], width: 3), // borda do botão
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Saci \nPererê"),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 150,
                    width: 100,
                    color: Colors.brown[200],
                    child: Image.asset("assets/imagem/iara_1.png")),
                Padding(padding: EdgeInsets.all(15)),
                TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "iara");
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.brown, //cor do fundo
                    onSurface: Colors.grey,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.lime[900], width: 3), // borda do botão
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Iara"),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 150,
                    width: 100,
                    color: Colors.brown[200],
                    child: Image.asset("assets/imagem/curupira_2.png")),
                Padding(padding: EdgeInsets.all(15)),
                TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "curupira");
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.brown, //cor do fundo
                    onSurface: Colors.grey,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.lime[900], width: 3), // borda do botão
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Curupira"),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 150,
                    width: 100,
                    color: Colors.brown[200],
                    child: Image.asset("assets/imagem/boto_1.png")),
                Padding(padding: EdgeInsets.all(5)),
                TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "boto");
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.brown, //cor do fundo
                    onSurface: Colors.grey,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.lime[900], width: 3), // borda do botão
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Boto\nCor de Rosa"),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 150,
                    width: 100,
                    color: Colors.brown[200],
                    child: Image.asset("assets/imagem/boitata_1.png")),
                Padding(padding: EdgeInsets.all(15)),
                TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "boitata");
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.brown, //cor do fundo
                    onSurface: Colors.grey,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.lime[900], width: 3), // borda do botão
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Boitatá"),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 150,
                    width: 100,
                    color: Colors.brown[200],
                    child: Image.asset("assets/imagem/mula_1.png")),
                Padding(padding: EdgeInsets.all(5)),
                TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "mula");
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.brown, //cor do fundo
                    onSurface: Colors.grey,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.lime[900], width: 3), // borda do botão
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Mula\nSem Cabeça"),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 150,
                    width: 100,
                    color: Colors.brown[200],
                    child: Image.asset("assets/imagem/lobisomem_1.png")),
                Padding(padding: EdgeInsets.all(5)),
                TextButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "lobisomem");
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.brown, //cor do fundo
                    onSurface: Colors.grey,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.lime[900], width: 3), // borda do botão
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Lobisomem"),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(30)),
          ],
        )),
      ),
    );
  }
}

class PaginaSaci extends StatelessWidget {
  const PaginaSaci({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[300],
      appBar: AppBar(
        title: Text("Página do Saci"),
        backgroundColor: Colors.lime[900],
      ),
      drawer: Drawer(
        child: Menu(),
      ),
      body: Container(
        child: conteudoPaginaSaci(),
      ),
    );
  }
}

class conteudoPaginaSaci extends StatelessWidget {
  const conteudoPaginaSaci({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Saci Pererê",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.brown)),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              child: Image.asset(
                "assets/imagem/saci_1.gif",
                scale: 5,
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              color: Colors.brown[100],
              child: Center(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(20)),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "O saci-pererê é um ser mítico que habita as florestas e tem como grande característica o "
                        "fato de ser travesso e pregar peças nas pessoas. Ele é um ser pequeno, com cerca de meio metro "
                        "de altura, embora existam versões da lenda que falem que ele pode chegar a ter três metros de altura, "
                        "se quiser.\n\nSeguindo a descrição, na lenda saci é negro e possui apenas uma perna, com a qual se locomove "
                        "rapidamente. É conhecido também por não possuir cabelos e nem pelos corporais, usar um gorro vermelho na "
                        "cabeça e praticar o hábito do fumo pelo cachimbo. Algumas versões da lenda apresentam-no com olhos vermelhos, "
                        "enquanto outras não trazem essa característica.\n\nComo mencionamos, a imagem clássica do saci mostra-o como um "
                        "ser mítico e travesso que realiza brincadeiras, e, por isso, muitas menções do passado referem-se a ele "
                        "como “endiabrado”. Por ser agitado, saci costumeiramente está realizando travessuras por onde passa. "
                        "Importante mencionar que dentro da lenda não existe apenas um saci, podendo existir vários realizando "
                        "suas travessuras ao mesmo tempo.\n\nPráticas mais comuns do Saci:\n"
                        "- Incomodar os cavalos;\n- Incomodar os viajantes;\n- Invadir as casas;\n- Muitas outras travessuras...\n\n",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'home');
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.brown, //cor do fundo

                onSurface: Colors.grey,
                // padding: const EdgeInsets.all(25), //margem no botão ou
                //fixedSize: const Size(100, 100), //tamanho fixo da margem
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.lime[900], width: 3), // borda do botão
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text("Voltar"),
            ),
            Padding(padding: EdgeInsets.all(30)),
          ],
        ),
      ),
    );
  }
}

class PaginaIara extends StatelessWidget {
  const PaginaIara({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[300],
      appBar: AppBar(
        title: Text("Página da Iara"),
        backgroundColor: Colors.lime[900],
      ),
      drawer: Drawer(
        child: Menu(),
      ),
      body: Container(
        child: conteudoPaginaIara(),
      ),
    );
  }
}

class conteudoPaginaIara extends StatelessWidget {
  const conteudoPaginaIara({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Iara",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.brown)),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              child: Image.asset(
                "assets/imagem/iara_2.png",
                scale: 1,
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              color: Colors.brown[100],
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Iara ou Uiara é um nome de origem indígena, cuja raiz do Tupi-guarani y-îara significa senhora das águas."
                        "Alguns índicios mostram que a lenda da Iara é de origem europeia e foi adaptada para a realidade indígena. "
                        "Semira Adler Vainsencher, pesquisadora da Fundação Joaquim Nabuco, escreve sobre isso:\n\n"
                        "A mulher-peixe chegou ao País, depois do descobrimento, através dos seus colonizadores. Estes, "
                        "além da presença física, da língua e dos hábitos, trouxeram, ainda, os seus valores, mitos, lendas "
                        "e superstições. Nesse sentido, a herança cultural européia misturou-se às culturas indígena e africana, "
                        "permutaram-se conhecimentos e valores, surgindo, através do sincretismo, um amálgama sui generis. "
                        "Na Região Norte, em particular, a permanente interação com os rios e igarapés, por parte dos(as) "
                        "caboclos(as), deu origem a várias lendas que evidenciam elementos representativos da vida e da morte. "
                        "A Iara, uma das mais belas figuras aquáticas, é uma delas. (…)",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'home');
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.brown, //cor do fundo

                onSurface: Colors.grey,
                // padding: const EdgeInsets.all(25), //margem no botão ou
                //fixedSize: const Size(100, 100), //tamanho fixo da margem
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.lime[900], width: 3), // borda do botão
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text("Voltar"),
            ),
            Padding(padding: EdgeInsets.all(30)),
          ],
        ),
      ),
    );
  }
}

class PaginaCurupira extends StatelessWidget {
  const PaginaCurupira({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[300],
      appBar: AppBar(
        title: Text("Página do Curupira"),
        backgroundColor: Colors.lime[900],
      ),
      drawer: Drawer(
        child: Menu(),
      ),
      body: Container(
        child: conteudoPaginaCurupira(),
      ),
    );
  }
}

class conteudoPaginaCurupira extends StatelessWidget {
  const conteudoPaginaCurupira({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Curupira",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.brown)),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              child: Image.asset(
                "assets/imagem/curupira_1.gif",
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              color: Colors.brown[100],
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Curupira é o nome de um personagem do folclore brasileiro que surgiu entre os povos indígenas. Essa lenda fala de um ser mítico protetor da floresta que se voltava contra aqueles que entravam na floresta para derrubar árvores ou caçar animais. É uma das lendas mais antigas do nosso folclore.\n\n"
                        "O curupira, de acordo com o que muitos relataram sobre a lenda, é um dos seres que mais causavam medo nos indígenas nos séculos passados. A descrição física desse ser afirma que ele teria corpo de menino, baixa estatura, cabelos vermelhos e os pés ao contrário, isto é, com os calcanhares para frente. Além disso, esse também teria grande força física.\n\n"
                        "Esse ser aterrorizava os indígenas porque seria um defensor da floresta e, assim, voltava-se contra todos aqueles que entravam no mato para caçar animais ou derrubar árvores. Os indígenas acreditavam que o curupira poderia aterrorizar suas vítimas e, até mesmo, matá-las, além de acreditarem que corpos de seres humanos encontrados na floresta eram vítimas do curupira.\n\n"
                        "A lenda narra que o curupira não gosta de estar em locais densamente povoados e, por isso, evita estar onde estão muitos humanos. O ambiente natural do curupira é a floresta e, por isso, os indígenas temiam tanto entrar nela. Por fim, uma última informação importante era o fato de que os indígenas não adoravam o curupira, apenas o temiam.\n",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'home');
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.brown, //cor do fundo

                onSurface: Colors.grey,
                // padding: const EdgeInsets.all(25), //margem no botão ou
                //fixedSize: const Size(100, 100), //tamanho fixo da margem
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.lime[900], width: 3), // borda do botão
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text("Voltar"),
            ),
            Padding(padding: EdgeInsets.all(30)),
          ],
        ),
      ),
    );
  }
}

class PaginaBoto extends StatelessWidget {
  const PaginaBoto({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[300],
      appBar: AppBar(
        title: Text("Página do Boto"),
        backgroundColor: Colors.lime[900],
      ),
      drawer: Drawer(
        child: Menu(),
      ),
      body: Container(
        child: conteudoPaginaBoto(),
      ),
    );
  }
}

class conteudoPaginaBoto extends StatelessWidget {
  const conteudoPaginaBoto({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Boto Cor de Rosa",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.brown)),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              child: Image.asset(
                "assets/imagem/boto_2.jpg",
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              color: Colors.brown[100],
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Um dos personagens mais famosos das lendas do folclore brasileiro é o boto cor-de-rosa, um mamífero que tem origem indígena, proveniente da região norte do Brasil (mais especificamente, a amazônica). O boto rosa é amigo dos pescadores e outros que se encontram vulneráveis no mar. Assim, os ajuda com a pesca, protege os barcos e canoas durante as tempestades e salva pessoas que começam a se afogar no rio.\n\n"
                        "Segundo a lenda, durante as noites de comemoração da festa junina (celebração com associação a santos católicos), o boto cor de rosa, que vive nas águas do rio Amazonas, se transforma em um rapaz com o uso de um poder mágico.\n\n"
                        "Esse rapaz tem beleza chamativa, charme único e esbanja elegância. É alto, forte, tem um jeito galanteador, espontâneo, comunicativo e traja uma roupa branca chique e um chapéu.\n\n"
                        "Quando se transforma no belo rapaz, o boto vai a diversas festas noturnas, onde dança e seduz outras jovens desacompanhadas e as convence para um passeio no rio, seu lar. Lá, costuma cortejá-las, engravidá-las e depois abandoná-las, já que no dia seguinte retorna a sua forma tradicional de boto.\n",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'home');
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.brown, //cor do fundo

                onSurface: Colors.grey,
                // padding: const EdgeInsets.all(25), //margem no botão ou
                //fixedSize: const Size(100, 100), //tamanho fixo da margem
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.lime[900], width: 3), // borda do botão
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text("Voltar"),
            ),
            Padding(padding: EdgeInsets.all(30)),
          ],
        ),
      ),
    );
  }
}

class PaginaBoitata extends StatelessWidget {
  const PaginaBoitata({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[300],
      appBar: AppBar(
        title: Text("Página do Boitatá"),
        backgroundColor: Colors.lime[900],
      ),
      drawer: Drawer(
        child: Menu(),
      ),
      body: Container(
        child: conteudoPaginaBoitata(),
      ),
    );
  }
}

class conteudoPaginaBoitata extends StatelessWidget {
  const conteudoPaginaBoitata({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Boitatá",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.brown)),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              child: Image.asset(
                "assets/imagem/boitata_2.jpg",
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              color: Colors.brown[100],
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "O boitatá é um ser do folclore brasileiro tradicionalmente identificado como uma cobra de fogo, cujo propósito é o de proteger os campos daqueles que promovem incêndios criminosos. No folclore, o boitatá possui a forma de uma cobra de fogo com muitos olhos, dos quais também saem chamas.\n\n"
                        "Na lenda, o boitatá também pode se transformar em um tronco em chamas para matar os homens que promovem destruição dos gramados. Independentemente da forma, o boitatá mata os homens que causam dano aos campos. Sua lenda conta que ele possui muitos olhos porque comeu a pupila de muitos animais — o que justifica também a luminosidade desse ser.\n\n"
                        "O primeiro registro que se tem do boitatá é de 31 de maio de 1560, em um relato escrito pelo padre jesuíta José de Anchieta. Na sua menção, José de Anchieta falou de um fantasma que os índios chamavam baetatá, definindo-o como um “facho cintilante” que os matava, assim como era do feitio dos curupiras.\n",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'home');
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.brown, //cor do fundo

                onSurface: Colors.grey,
                // padding: const EdgeInsets.all(25), //margem no botão ou
                //fixedSize: const Size(100, 100), //tamanho fixo da margem
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.lime[900], width: 3), // borda do botão
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text("Voltar"),
            ),
            Padding(padding: EdgeInsets.all(30)),
          ],
        ),
      ),
    );
  }
}

class PaginaMula extends StatelessWidget {
  const PaginaMula({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[300],
      appBar: AppBar(
        title: Text("Página da Mula"),
        backgroundColor: Colors.lime[900],
      ),
      drawer: Drawer(
        child: Menu(),
      ),
      body: Container(
        child: conteudoPaginaMula(),
      ),
    );
  }
}

class conteudoPaginaMula extends StatelessWidget {
  const conteudoPaginaMula({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Mula Sem Cabeça",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.brown)),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              child: Image.asset("assets/imagem/mula_4.gif", scale: 4),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              color: Colors.brown[100],
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Nas noites escuras, nas estradas desertas que cortam o interior, muita gente já deu de cara com uma mula preta, com o pescoço terminando numa grande língua de fogo.\n\n"
                        "Em uma das muitas versões dessa lenda, tudo começou quando um homem seguiu sua esposa até o cemitério e a surpreendeu enquanto ela violava uma sepultura.\n\n"
                        "Com um grito horrendo, a mulher se transformou na Mula sem Cabeça e fugiu a galope, soltando chamas e coices.\n\n"
                        "Originária do folclore português e espanhol, a Mula sem Cabeça é um dos mitos mais conhecidos do folclore brasileiro, e também um dos mais temidos.\n",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'home');
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.brown, //cor do fundo

                onSurface: Colors.grey,
                // padding: const EdgeInsets.all(25), //margem no botão ou
                //fixedSize: const Size(100, 100), //tamanho fixo da margem
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.lime[900], width: 3), // borda do botão
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text("Voltar"),
            ),
            Padding(padding: EdgeInsets.all(30)),
          ],
        ),
      ),
    );
  }
}

class PaginaLobisomem extends StatelessWidget {
  const PaginaLobisomem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[300],
      appBar: AppBar(
        title: Text("Página do Lobisomem"),
        backgroundColor: Colors.lime[900],
      ),
      drawer: Drawer(
        child: Menu(),
      ),
      body: Container(
        child: conteudoPaginaLobisomem(),
      ),
    );
  }
}

class conteudoPaginaLobisomem extends StatelessWidget {
  const conteudoPaginaLobisomem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Lobisomem",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.brown)),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              child: Image.asset("assets/imagem/lobisomem_3.jpg", scale: 1),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              color: Colors.brown[100],
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "O lobisomem é uma das lendas de folclore mais conhecidas do mundo, entando presente no folclore de países de diversos continentes. Existem muitas variações sobre sua história, mas é muito conhecida a versão que fala de um homem que se transforma em lobo durante as noites de lua cheia. Essa habilidade de transformar-se em lobo era, normalmente, associada a uma maldição e  conhecida como licantropia.\n\n"
                        "Nas lendas do folclore em locais de tradição cristã, considerava-se que tal maldição poderia ser causada por predestinação ou por punição devido a algum pecado. Quando a lua cheia passa, o portador da licantropia deixa essa condição até que essa lua retorne.\n\n"
                        "O lobisomem é um ser muito poderoso que possui uma força física sobre-humana, além de longas garras. Lutar contra ele é, portanto, algo muito perigoso dentro das lendas, e aqueles que o fazem sabem que, se forem feridos, terão a maldição transferida para si. A ferramenta mais conhecida para combater um lobisomem é a bala de prata.\n\n"
                        "Uma das lendas do lobisomem afirma ser possível matá-lo com uma bala de prata na altura do coração. Outra versão, influenciada pela tradição cristã, fala que a bala tem de estar coberta com cera de vela de altar utilizada na celebração de três missas do galo. Outras versões dizem que é necessário apenas um ferimento para conter o lobisomem e fazê-lo retornar a sua forma humana.\n",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'home');
              },
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.brown, //cor do fundo

                onSurface: Colors.grey,
                // padding: const EdgeInsets.all(25), //margem no botão ou
                //fixedSize: const Size(100, 100), //tamanho fixo da margem
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.lime[900], width: 3), // borda do botão
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Text("Voltar"),
            ),
            Padding(padding: EdgeInsets.all(30)),
          ],
        ),
      ),
    );
  }
}
