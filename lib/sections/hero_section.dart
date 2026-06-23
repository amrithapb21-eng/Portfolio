// sections/hero_section.dart
//
// The HERO is the first thing visitors see — it fills most of the viewport.
//
// LAYOUT (desktop):
//   [Left column: text + buttons]   [Right column: avatar placeholder]
//
// LAYOUT (mobile):
//   [Avatar]
//   [Text + buttons]  (stacked vertically)
//
// RESPONSIVE TECHNIQUE:
// We check MediaQuery.of(context).size.width. If width >= 800 we use a Row
// for side-by-side layout; otherwise we use a Column for a stacked layout.

import 'package:flutter/material.dart';
import '../models/portfolio_data.dart';

class HeroSection extends StatelessWidget {
  // ScrollController lets us scroll the page when a nav button is tapped.
  // The keys let us scroll to specific sections.
  final Map<String, GlobalKey> sectionKeys;

  const HeroSection({super.key, required this.sectionKeys});

  @override
  Widget build(BuildContext context) {
    // MediaQuery gives us the current screen width.
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isDesktop = screenWidth >= 800; // Breakpoint: 800px

    return Container(
      // ── Background colour of the hero ─────────────────────────────────────
      // Students: try a gradient with BoxDecoration instead!
      color: const Color.fromARGB(255, 92, 120, 75),

      // Padding: more horizontal space on desktop, less on mobile.
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 80 : 24,
        vertical: 80,
      ),

      child: isDesktop
          ? _buildDesktopLayout(context)
          : _buildMobileLayout(context),
    );
  }

  // ── Desktop: side-by-side Row layout ──────────────────────────────────────
  Widget _buildDesktopLayout(BuildContext context) {
    return Row(
      children: [
        // Left side expands to fill available space
        Expanded(child: _buildTextContent(context)),
        const SizedBox(width: 60),
        _buildAvatar(),
      ],
    );
  }

  // ── Mobile: vertically stacked Column layout ───────────────────────────────
  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      children: [
        _buildAvatar(),
        const SizedBox(height: 40),
        _buildTextContent(context),
      ],
    );
  }

  // ── Profile Image Placeholder ──────────────────────────────────────────────
  Widget _buildAvatar() {
    // CircleAvatar with a large radius acts as the profile photo placeholder.
    // Students: replace with CircleAvatar(backgroundImage: ...) to add a real photo.
    return CircleAvatar(
      radius: 100,
      backgroundColor: const Color.fromARGB(255, 174, 207, 155),
      child: const Icon(Icons.person, size: 100, color: Colors.white),
    );
  }

  // ── Text Content + Buttons ─────────────────────────────────────────────────
  Widget _buildTextContent(BuildContext context) {
    return Column(
      // On mobile the column fills the full width, align text to the left.
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Name
        Text(
          PortfolioData.name,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),

        const SizedBox(height: 8),

        // Professional title
        Text(
          PortfolioData.title,
          style: TextStyle(
            fontSize: 20,
            color: const Color.fromARGB(255, 58, 71, 56),
          ),
        ),

        const SizedBox(height: 20),

        // Short introduction paragraph
        Text(
          PortfolioData.intro,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black54,
            height: 1.6,
          ),
        ),

        const SizedBox(height: 32),

        // ── CTA Buttons ────────────────────────────────────────────────────
        // Wrap so buttons stack on narrow screens.
        Wrap(
          spacing: 16,
          runSpacing: 12,
          children: [
            // "View Projects" scrolls to the Projects section.
            ElevatedButton(
              onPressed: () => _scrollToSection('projects'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 144, 150, 141),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                    horizontal: 28, vertical: 16),
              ),
              child: const Text('View Projects'),
            ),

            // "Contact Me" scrolls to the Contact section.
            OutlinedButton(
              onPressed: () => _scrollToSection('contact'),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 28, vertical: 16),
              ),
              child: const Text('Contact Me'),
            ),
          ],
        ),
      ],
    );
  }

  // ── Scroll Helper ──────────────────────────────────────────────────────────
  // Uses the GlobalKey stored in sectionKeys to find the widget on screen
  // and smoothly scroll to it.
  void _scrollToSection(String key) {
    final globalKey = sectionKeys[key];
    if (globalKey?.currentContext != null) {
      Scrollable.ensureVisible(
        globalKey!.currentContext!,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }
}
