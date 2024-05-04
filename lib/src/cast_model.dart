class CastModel {
  final String name;
  final String role;
  final String imgUrl;
  final String description;

  CastModel(
      {required this.name,
      required this.role,
      required this.imgUrl,
      required this.description});

  static List<CastModel> castList = [
    CastModel(
      name: 'Timothée Chalamet',
      role: 'Actor',
      imgUrl:
          'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/BE2sdjpgsa2rNTFa66f7upkaOP.jpg',
      description:
          'He began his career appearing in the drama series Homeland in 2012. Two years later, he made his film debut in the comedy-drama Men, Women & Children and appeared in Christopher Nolans science fiction film Interstellar. He came into attention in Luca Guadagninos coming-of-age film Call Me by Your Name (2017). Alongside supporting roles in Greta Gerwigs films Lady Bird (2017) and Little Women (2019), he took on starring roles in Beautiful Boy (2018) and Dune (2021).',
    ),
    CastModel(
      name: 'Zendaya',
      role: 'Actor',
      imgUrl:
          'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/tylFh0K48CZIIhvKlA7WA1XBAtE.jpg',
      description:
          'Zendaya Maree Stoermer Coleman (born September 1, 1996) is an American actress and singer. She began her career as a child model and backup dancer. She rose to mainstream prominence for her role as Rocky Blue on the Disney Channel sitcom Shake It Up (2010–2013).',
    ),
    CastModel(
      name: 'Javier Bardem',
      role: 'Actor',
      imgUrl:
          'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/IShnFg6ijWhpbu29dFBd9PtqQg.jpg',
      description:
          'Javier Ángel Encinas Bardem is a Spanish actor from the Canary Islands. He is best known for his role in the 2007 film No Country for Old Men, for which he won the Academy Award for Best Supporting Actor portraying the psychopathic assassin Anton Chigurh. He has also received critical acclaim for roles in films such as Jamón, jamón, Carne trémula, Boca a boca, Los Lunes al sol, Mar adentro, and Skyfall, for which he received both a BAFTA and a SAG nomination for Best Supporting Actor.',
    ),
    CastModel(
      name: 'Christopher Walken',
      role: 'Actor',
      imgUrl:
          'https://media.themoviedb.org/t/p/w600_and_h900_bestv2/ApgDL7nudR9T2GpjCG4vESgymO2.jpg',
      description:
          'Christopher Walken (born Ronald Walken, March 31, 1943) is an American actor. He has appeared in more than 100 films and television programs, including Annie Hall (1977), The Deer Hunter (1978), The Dogs of War (1980), The Dead Zone (1983), A View to a Kill (1985), Batman Returns (1992), True Romance (1993), Pulp Fiction (1994), Antz (1998), Vendetta (1999), Sleepy Hollow (1999), Joe Dirt (2001), Catch Me If You Can (2002), Hairspray (2007), Seven Psychopaths (2012), the first three Prophecy films, The Jungle Book (2016), and Irreplaceable You (2018). He has received a number of awards and nominations, including the Academy Award for Best Supporting Actor for The Deer Hunter.',
    ),
  ];
}
