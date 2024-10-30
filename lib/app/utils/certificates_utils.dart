class CertificatesUtils {
  final String name;
  final String image;
  final String link;
  final String dateOfCompletion;
  final double length;
  final List<String> features;
  final String? description;

  CertificatesUtils(
    this.features, {
    required this.name,
    required this.image,
    required this.link,
    required this.dateOfCompletion,
    required this.length,
    this.description,
  });
}

List<CertificatesUtils> certificatesUtils = [
  CertificatesUtils(['html, css, JS, Node.js, Express'],
      name: 'Web Developer Bootcamp',
      image: '/images/certificates/certificate_web_dev.jpg',
      link:
          'https://www.udemy.com/certificate/UC-2e6a2303-482b-4fe8-820e-e0d047bdf787/',
      dateOfCompletion: "2022 November",
      length: 64,
      description:
          'In a nutshell, during bootcamp I mainly build a Yelp-like web application with RESTful api and CRUD data operations about campings in USA HTML5 / CSS3 / flexbox / responsive design / modern JS/ create SPA with AJAX / Bootstrap 5 / ReactJS / DOM Manipulation / server-side JS with NodeJS / npm / crate fullstack application with ExpressJS and MongoDB / templating / REST / monitor and test apis wiht Postman / SQL vs noSQL dbs / mongoose / authentication / authorisation / cookies&sessions / common security issues / best practices / deploying apps / heroku /cloud databases / Firebase / image upload and storage / maps & geocoding /'),
  CertificatesUtils(
    ['React'],
    name: 'React - The Complete Guide 2023',
    image: '/images/certificates/certificate_react.jpg',
    link:
        'https://www.udemy.com/certificate/UC-f3faaafb-e172-41a4-909f-9d848a1d59d4/',
    dateOfCompletion: "2023 July",
    length: 51,
    description:
        'Working with built-in hooks and building cutom hooks / styled components & css modules / http requests / handling forms and users inputs with validation / Redux & Redux Toolkit / routing with React Router / Next.js / deploying / authentication / unit tests / combining ReactJs with TypeScript / animations /',
  ),
  CertificatesUtils(
    ['TypeScript'],
    name: 'Mastering TypeScript',
    image: '/images/certificates/certificate_typescript.jpg',
    link:
        'https://www.udemy.com/certificate/UC-5fe9aa48-d848-47fc-9b63-abe4d64e5a85/',
    dateOfCompletion: "2023 August",
    length: 10,
    description:
        'During the curse I get along with basic and advanced concepts of TS / integration into Webpack / use TS with ReactJS / working with 3rd party libraries /',
  ),
  CertificatesUtils(
    ['Flutter, Dart'],
    name: 'Flutter & Dart - The Complete Guide',
    image: '/images/certificates/certificate_flutter.jpg',
    link:
        'https://www.udemy.com/certificate/UC-baae83d5-dd42-4039-96ef-5f98b8e1a157/',
    dateOfCompletion: "2023 October",
    length: 30,
    description:
        'Responsive UI / navigation in multiple-screens app / state management with Riverpod / animations: Animated Builder() AnimatedSwitcher() / widgets such as: Scaffold(), Snackbar(), Drawer() andy many more /working with Form() / form inputs validation / setting simple backend using Firebase / http package / error handling / using native devices features / image_picker package / using device camera for taking pictures / user current location with \'location package\' / Google maps API /  Firebase CLI & SKD / Firebase Authentication / Firebase Storage / Firestore / push Notifications - Firebase Cloud Messaging /',
  ),
  CertificatesUtils(
    ['Bloc State Management'],
    name: 'Flutter Bloc Essential Course',
    image: '/images/certificates/certificate_bloc.jpg',
    link:
        'https://www.udemy.com/certificate/UC-c4ac4f18-e3cc-4994-b4a0-e7c9cfbb454b/',
    dateOfCompletion: "2024 February",
    length: 64,
    description:
        '///////////////////\nDuring the curse I get along with basic and advanced concepts of TS / integration into Webpack / use TS with ReactJS / working with 3rd party libraries /',
  ),
  CertificatesUtils(
    ['Generative AI for NodeJs: OpenAI, LangChain - TypeScript'],
    name: 'Generative AI for NodeJs: OpenAI, LangChain - TypeScript',
    image: '/images/certificates/certificate_openai_node.jpg',
    link:
        'https://www.udemy.com/certificate/UC-6f844740-c9f4-4b72-8975-cef438c1f69c/',
    dateOfCompletion: "2024 September",
    length: 7.5,
    description:
        'Introduction to AI and its applications in Node.js / OpenAI setup for basic apps / Understanding models, tokens and roles / OpenAI request parameters',
  ),
  CertificatesUtils(
    ['The Ultimate MySQL Bootcamp: Go from SQL Beginner to Expert'],
    name: 'The Ultimate MySQL Bootcamp: Go from SQL Beginner to Expert',
    image: '/images/certificates/certificate_mysql.jpg',
    link:
        'https://www.udemy.com/certificate/UC-e593ca42-5ea6-4696-ab43-9e55985283a1/',
    dateOfCompletion: "2024 October",
    length: 22,
    description:
        'Creating database or interacting with existing databases / Writing complex SQL join queries across multiple tables / MySQL 8 Window Functions (LEAD, LAG, RANK, etc.) / Model real-world data and generate reports using SQL / Answer company performance or sales questions using data /  MySQL 8.x syntax introduction to its applications in Node.js',
  ),
  CertificatesUtils(
    ['figma, clean code, solid principles'],
    name: 'Courses in progress',
    image: '/images/background.jpg',
    link: ' ',
    dateOfCompletion: "2024",
    length: 64,
    description:
        '',
  ),
];
