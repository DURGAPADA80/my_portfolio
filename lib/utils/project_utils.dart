class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? githubLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.githubLink,
  });
}

// ###############
// HOBBY PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/1.png',
    title: 'currently no project -> 1',
    subtitle:
        'RANDOM -> This is a comprehensive English learning app for practicing and competing with each other.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.shohatech.eduza',
  ),
  ProjectUtils(
    image: 'assets/projects/02.png',
    title: 'currently no project -> 02',
    subtitle:
        'RANDOM -> This is a dictionary application for English learners to easily look up word definitions.',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.shohatech.eduza_eng_dictionary',
    iosLink:
        "https://apps.apple.com/us/app/eduza-english-dictionary/id6443770339",
  ),
  ProjectUtils(
      image: 'assets/projects/03.png',
      title: 'currently no project -> 03',
      subtitle:
          'RANDOM -> This is a word memorising app to save and play your own words as quizes',
      androidLink:
          'https://play.google.com/store/apps/details?id=com.shohruhak.eng_pocket_dictionary',
      iosLink:
          'https://apps.apple.com/tr/app/pocket-dictionary-1/id6447465115'),
  ProjectUtils(
    image: 'assets/projects/04.png',
    title: 'currently no project -> 04',
    subtitle:
        'RANDOM -> This is a simple dzikr counter app for muslims with persistent storage',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.shohatech.tasbeeh',
  ),
  ProjectUtils(
    image: 'assets/projects/05.png',
    title: 'currently no project -> 05',
    subtitle:
        'RANDOM -> This is a simple task management app with persistent storage',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.shohatech.todo',
    iosLink: "https://apps.apple.com/us/app/eduza-todo/id6443970333",
  ),
  ProjectUtils(
    image: 'assets/projects/06.png',
    title: 'currently no project-> 06',
    subtitle: 'RANDOM -> This is a note taking app for MacOS and Android',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.shohatech.notepad',
    iosLink: 'https://apps.apple.com/us/app/eduza-notepad/id6443973859',
  ),
];

// ###############
// WORK PROJECTS
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/w01.png',
    title: 'ReelGen AI',
    subtitle:
        'A Flask-based web app that converts images and text into short, AIgenerated with realistic voiceovers',
    githubLink: 'https://github.com/DURGAPADA80/ReelGen-AI.git.',
  ),
  ProjectUtils(
    image: 'assets/projects/w02.png',
    title: 'Spotify-Clone',
    subtitle:
        'Developed a fully responsive online music player inspired by Spotify',
    githubLink: ' https://github.com/DURGAPADA80/Spotify-Clone.git',
  ),
  ProjectUtils(
    image: 'assets/projects/w03.png',
    title: 'my_portfolio web app',
    subtitle:
        'Developed and deployed a personal portfolio website to showcase skills and projects',
    webLink: 'https://stately-moon-414411.firebaseapp.com/',
    githubLink: 'https://github.com/DURGAPADA80/my_portfolio.git',
  ),
];
