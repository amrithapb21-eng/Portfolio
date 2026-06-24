// models/portfolio_data.dart
//
// This file holds ALL the data shown on the portfolio website.
// Students: change the values here to personalise the portfolio —
// no need to touch the layout files at all.

// ─── Project Model ────────────────────────────────────────────────────────────
class Project {
  final String title;
  final String description;
  final List<String> technologies;
  final String imageLabel;

  const Project({
    required this.title,
    required this.description,
    required this.technologies,
    required this.imageLabel,
  });
}

// ─── Experience Model ─────────────────────────────────────────────────────────
class Experience {
  final String company;
  final String position;
  final String duration;
  final String description;

  const Experience({
    required this.company,
    required this.position,
    required this.duration,
    required this.description,
  });
}

// ─── Skill Model ──────────────────────────────────────────────────────────────
class Skill {
  final String name;
  final String category;

  const Skill({required this.name, required this.category});
}

// ─── Sample Portfolio Data ────────────────────────────────────────────────────
// Replace every value below with your own information.

class PortfolioData {
  // Personal Info
  static const String name  = 'Amritha P B';
  static const String title = 'Computer Science Student';
  static const String intro =
      'A passionate Computer Science student who loves coding, learning new technologies, and building creative solutions through software development.';
  static const String aboutMe =
     "Hi! I'm Amritha, a B.Tech Computer Science student who enjoys creating "
      "web applications and exploring new technologies. I have experience in "
      "full stack development and Flutter, and I love improving my programming "
      "skills by working on practical projects.";

  // Education
  static const String degree         = 'B.Tech. Computer Science';
  static const String university     = 'APJ Abdul Kalam Technological';
  static const String graduationYear = '2028';

  // Contact
  static const String email    = 'amrithapb21@gmail.com';
  static const String phone    = '+91 xxxxxxxxxx';
  static const String linkedin = 'linkedin.com/in/amrithapb';
  static const String github   = 'github.com/amrithapb21-eng';

  // Skills
  static const List<Skill> skills = [
    Skill(name: 'Flutter',      category: 'Mobile'),
    Skill(name: 'Dart',         category: 'Mobile'),
    Skill(name: 'Python',     category: 'Programming'),
    Skill(name: 'C',    category: 'Programming'),
    Skill(name: 'Java',        category: 'Programming'),
    Skill(name: 'HTML & CSS',   category: 'Web'),
    Skill(name: 'Git & GitHub', category: 'Tools'),
    Skill(name: 'Full Stack',        category: 'Web'),
  ];

  // Projects
  static const List<Project> projects = [
    Project(
      title: 'Library Management System',
      description: 'A web-based application for managing books, issuing books, and tracking returns with an easy-to-use interface.',
      technologies: ['JavaScript', 'HTML', 'CSS'],
      imageLabel: 'Library System',
    ),
    Project(
      title: 'Pet Adoption System',
      description:  'A database-based application that helps users manage pet adoption records efficiently.',
      technologies: ['SQL', 'MongoDB','Database'],
      imageLabel: 'Pet Adoption',
    ),
    Project(
      title: 'College Event Registration',
      description: 'A college event registration system that allows students to register for events and manage submissions.',
      technologies: ['Python', 'HTML', 'CSS','Flask'],
      imageLabel: 'College Event Registration',
    ),
    Project(
      title: 'Portfolio Website',
      description: 'A personal portfolio website developed using Flutter Web to showcase skills, projects, and achievements.',
      technologies: ['Flutter Web', 'Dart'],
      imageLabel: 'Portfolio',
    ),
    Project(
      title: 'File Management System',
      description: 'An application designed to organize and manage files efficiently.',
      technologies: ['HTML', 'JavaScript', 'CSS'],
      imageLabel: 'File Management System',
    ),
    Project(
      title: 'Keraval Toursim Guide',
      description: 'A tourism guide website showcasing beautiful destinations and places in Kerala.',
      technologies: ['HTML', 'CSS', 'JavaScript'],
      imageLabel: 'Keraval',
    ),
  ];

  // Experience
  static const List<Experience> experiences = [
    Experience(
      company: 'Pacelab',
      position: 'Full Stack Intern',
      duration: 'Jun 2026',
      description: 'Worked on full stack development projects, creating user interfaces, '
          'developing web applications, and improving practical software development skills.',
    ),
    Experience(
      company: 'Oracle Academy',
      position: 'Student Learner',
      duration: 'Jan 2026',
      description: 'Learned programming concepts, database management, and software development practices through structured learning programs.',
    ),
    
  ];
}
