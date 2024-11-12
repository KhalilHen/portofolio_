import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String websiteUrl;
  final String githubUrl;
  final List<String> technologies;

  const ProjectCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.websiteUrl,
    required this.githubUrl,
    required this.technologies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: BoxDecoration(
        color: const Color(0xFF333333),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 400,
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Hero(
                        tag: 'project-$title',
                        child: Image.asset(
                          imageUrl,
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: technologies
                            .map((tech) => Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF4A4A4A),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    tech,
                                    style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 12,
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        description,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                          height: 1.6,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          _buildLink(
                            icon: Icons.language,
                            label: 'Visit Site',
                            onTap: () => launchUrl(Uri.parse(websiteUrl)),
                          ),
                          const SizedBox(width: 16),
                          _buildLink(
                            icon: MdiIcons.github,
                            label: 'View Code',
                            onTap: () => launchUrl(Uri.parse(githubUrl)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLink({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white30),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: Colors.white70, size: 18),
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Example usage in your HomePage:
/*
Container(
  child: Column(
    children: [
      const Text(
        'Projects',
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 16),
      const Text(
        'Here are some of my recent projects',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white70,
        ),
      ),
      const SizedBox(height: 40),
      ProjectCard(
        title: 'Sensei Sushi',
        description: 'A modern web application for a sushi restaurant featuring online ordering, menu management, and real-time order tracking.',
        imageUrl: '/images/sensei-sushi.png',
        websiteUrl: 'https://example.com',
        githubUrl: 'https://github.com/example',
        technologies: ['React', 'Node.js', 'MongoDB', 'Redux'],
      ),
    ],
  ),
),
*/