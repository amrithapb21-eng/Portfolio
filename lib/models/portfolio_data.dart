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
  static const String title = 'B Tech CS Student';
  static const String intro =
      'A passionate Computer Science student who loves coding, learning new technologies, and building creative solutions through software development.';
  static const String aboutMe =
      "Hi! I'm Amritha, a computer science student passionate about technology, creativity, and continuous learning. "
      'I enjoy exploring new ideas,developing projects, and enchancing my skills. '
      ;

  // Education
  static const String degree         = 'B.Tech. Computer Science';
  static const String university     = 'APJ Abdul Kalam Technological';
  static const String graduationYear = '2028';

  // Contact
  static const String email    = 'amrithapb@gmail.com';
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
      title: 'Library System',
      description: 'A productivity app to manage , issue books. '
          'and returns to an intuitive interface.',
      technologies: ['JavaScript', 'HTML', 'CSS'],
      imageLabel: 'Library System',
    ),
    Project(
      title: 'Pet Adoption',
      description: 'A relational database schema for adopting pets',
      technologies: ['SQL', 'NoSQL', 'MongoDB'],
      imageLabel: 'Pet Adoption',
    ),
    Project(
      title: 'College Event Registration',
      description: 'A lightweight college event registration application',
      technologies: ['Python', 'HTML', 'CSS'],
      imageLabel: 'College Event Registration',
    ),
    Project(
      title: 'Portfolio Website',
      description: 'This very portfolio! Built with Flutter Web as a '
          'single-page application with smooth scrolling.',
      technologies: ['Flutter Web', 'Dart'],
      imageLabel: 'Portfolio',
    ),
    Project(
      title: 'File Management System',
      description: 'An application to manage files smoothly.',
      technologies: ['HTML', 'JavaScript', 'CSS'],
      imageLabel: 'File Management System',
    ),
    Project(
      title: 'Keraval',
      description: 'A tourism guide application based on places in Kerala.',
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
      description: 'Building and maintaining cross-platform mobile apps for '
          'enterprise clients. Led the migration of a legacy Android app to Flutter.',
    ),
    Experience(
      company: 'Oracle Academy',
      position: 'Student Learner',
      duration: 'Jan 2026',
      description: 'Developed UI components for a React Native app and wrote '
          'unit tests using Jest. Assisted in Firebase integration.',
    ),
    
  ];
}
