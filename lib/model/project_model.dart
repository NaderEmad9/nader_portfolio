class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Movies Application',
    'A Flutter application for discovering and managing movies using the TMDB API. It includes features like search, movie details, watchlist, and bookmarks. I led a team to ensure a smooth user experience and responsive UI.',
    'assets/images/MoviesApp.png',
    'https://github.com/NaderEmad9/movies_application',
  ),
  Project(
    'Task Management App',
    'A task management application built using Flutter and Firebase integration. It features a user-friendly interface with light/dark themes, enabling users to easily organize and manage tasks in real-time.',
    'assets/images/ToDoApp.png',
    'https://github.com/NaderEmad9/task_management',
  ),
  Project(
    'Islamic Application',
    'An Islamic app providing Quranic Surah details and Hadith content. It supports language switching (Arabic/English) and theme switching (light/dark modes).',
    'assets/images/IslamyApp.png',
    'https://github.com/NaderEmad9/islamyapplication',
  ),
  Project(
    'E-commerce Application',
    'A complete Flutter e-commerce app integrated with an API for product listings, user authentication, and cart management. This project demonstrates my skills in clean architecture and API integration.',
    'assets/images/ecommerce.png',
    'https://github.com/NaderEmad9/ecommerce_app',
  ),
];
