// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ============================================
// MODELS
// ============================================

class SleepRecord {
  final TimeOfDay bedTime;
  final TimeOfDay wakeTime;
  final String quality;
  final DateTime date;

  SleepRecord({
    required this.bedTime,
    required this.wakeTime,
    required this.quality,
    required this.date,
  });

  String get duration {
    int bedMinutes = bedTime.hour * 60 + bedTime.minute;
    int wakeMinutes = wakeTime.hour * 60 + wakeTime.minute;
    int total = wakeMinutes - bedMinutes;
    if (total < 0) total += 24 * 60;
    return '${total ~/ 60}h ${total % 60}m';
  }
}

class MeditationTechnique {
  final String title;
  final String duration;
  final String description;
  final IconData icon;
  final Color color;

  const MeditationTechnique({
    required this.title,
    required this.duration,
    required this.description,
    required this.icon,
    required this.color,
  });
}

class WellnessTip {
  final String category;
  final String title;
  final String description;
  final IconData icon;

  const WellnessTip({
    required this.category,
    required this.title,
    required this.description,
    required this.icon,
  });
}

// ============================================
// DATA
// ============================================

class SoulWellnessData {
  static const List<String> sleepTips = [
    'Maintain a consistent sleep schedule',
    'Create a relaxing bedtime routine',
    'Keep your bedroom cool and dark',
    'Avoid screens 1 hour before bed',
    'Limit caffeine after 2 PM',
    'Exercise regularly, but not before bed',
    'Avoid heavy meals 3 hours before sleep',
  ];

  static const List<MeditationTechnique> meditationTechniques = [
    MeditationTechnique(
      title: 'Mindfulness Meditation',
      duration: '5-10 minutes',
      description:
          'Focus on your breath and present moment awareness. Notice thoughts without judgment.',
      icon: Icons.spa,
      color: Colors.teal,
    ),
    MeditationTechnique(
      title: 'Body Scan',
      duration: '10-15 minutes',
      description:
          'Systematically focus on each part of your body, releasing tension and promoting relaxation.',
      icon: Icons.accessibility_new,
      color: Colors.blue,
    ),
    MeditationTechnique(
      title: 'Loving-Kindness',
      duration: '10 minutes',
      description:
          'Cultivate compassion by directing positive thoughts toward yourself and others.',
      icon: Icons.favorite,
      color: Colors.pink,
    ),
    MeditationTechnique(
      title: 'Guided Visualization',
      duration: '15-20 minutes',
      description:
          'Create peaceful mental imagery to reduce stress and enhance positive emotions.',
      icon: Icons.landscape,
      color: Colors.green,
    ),
  ];

  static const List<WellnessTip> wellnessTips = [
    WellnessTip(
      category: 'Mental Health',
      title: 'Practice Self-Compassion',
      description:
          'Treat yourself with the same kindness you would offer a good friend.',
      icon: Icons.favorite_border,
    ),
    WellnessTip(
      category: 'Stress Management',
      title: 'Take Regular Breaks',
      description:
          'Step away from work every 90 minutes to recharge your mind.',
      icon: Icons.pause_circle,
    ),
    WellnessTip(
      category: 'Social Connection',
      title: 'Connect with Others',
      description: 'Spend quality time with friends and family regularly.',
      icon: Icons.people,
    ),
    WellnessTip(
      category: 'Mindfulness',
      title: 'Stay Present',
      description:
          'Focus on the current moment rather than worrying about past or future.',
      icon: Icons.psychology,
    ),
    WellnessTip(
      category: 'Physical Health',
      title: 'Move Your Body',
      description:
          'Regular physical activity boosts both mental and physical health.',
      icon: Icons.directions_run,
    ),
    WellnessTip(
      category: 'Nutrition',
      title: 'Eat Mindfully',
      description:
          'Pay attention to your food, eating slowly and without distractions.',
      icon: Icons.restaurant,
    ),
  ];

  static const List<String> breathingTechniques = [
    '4-7-8 Breathing: Inhale for 4, hold for 7, exhale for 8',
    'Box Breathing: Inhale 4, hold 4, exhale 4, hold 4',
    'Deep Belly Breathing: Focus on expanding your diaphragm',
    'Alternate Nostril: Balance your nervous system',
  ];
}

// ============================================
// REUSABLE WIDGETS
// ============================================

class FeatureCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const FeatureCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: color),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  final String? subtitle;

  const SectionHeader({super.key, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 8),
          Text(
            subtitle!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 245, 243, 243),
              fontFamily: 'Permanent Marker',
            ),
          ),
        ],
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;
  final Color color;

  const InfoCard({
    super.key,
    required this.title,
    required this.content,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, color: color),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(content),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;
  final Color? color;

  const BulletPoint({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle, color: color ?? Colors.green, size: 20),
          const SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}

// ============================================
// MAIN SOUL SCREEN
// ============================================

class SoulScreen extends StatelessWidget {
  const SoulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soul & Wellness'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/soule.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionHeader(
                title: 'Nurture Your Inner Peace',
                subtitle: 'Balance your mind, body, and spirit',
              ),
              const SizedBox(height: 24),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.1,
                children: [
                  FeatureCard(
                    title: 'Sleep Tracker',
                    icon: Icons.bedtime,
                    color: Colors.indigo,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SleepTrackerScreen(),
                      ),
                    ),
                  ),
                  FeatureCard(
                    title: 'Meditation',
                    icon: Icons.self_improvement,
                    color: Colors.teal,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MeditationScreen(),
                      ),
                    ),
                  ),
                  FeatureCard(
                    title: 'Breathing',
                    icon: Icons.air,
                    color: Colors.cyan,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BreathingScreen(),
                      ),
                    ),
                  ),
                  FeatureCard(
                    title: 'Wellness Tips',
                    icon: Icons.lightbulb,
                    color: Colors.amber,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WellnessTipsScreen(),
                      ),
                    ),
                  ),
                  FeatureCard(
                    title: 'Mood Journal',
                    icon: Icons.book,
                    color: Colors.pink,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MoodJournalScreen(),
                      ),
                    ),
                  ),
                  FeatureCard(
                    title: 'Gratitude',
                    icon: Icons.favorite,
                    color: Colors.red,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GratitudeScreen(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================
// SLEEP TRACKER SCREEN
// ============================================

class SleepTrackerScreen extends StatefulWidget {
  const SleepTrackerScreen({super.key});

  @override
  State<SleepTrackerScreen> createState() => _SleepTrackerScreenState();
}

class _SleepTrackerScreenState extends State<SleepTrackerScreen> {
  TimeOfDay? _bedTime;
  TimeOfDay? _wakeTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sleep Tracker'),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeader(title: 'Track Your Sleep'),
            const SizedBox(height: 24),
            _TimeSelector(
              label: 'Bedtime',
              time: _bedTime,
              icon: Icons.nightlight,
              onTimeSelected: (time) => setState(() => _bedTime = time),
            ),
            const SizedBox(height: 16),
            _TimeSelector(
              label: 'Wake Time',
              time: _wakeTime,
              icon: Icons.wb_sunny,
              onTimeSelected: (time) => setState(() => _wakeTime = time),
            ),
            const SizedBox(height: 24),
            if (_bedTime != null && _wakeTime != null)
              InfoCard(
                title: 'Sleep Duration',
                content: _calculateDuration(),
                icon: Icons.schedule,
                color: Colors.indigo,
              ),
            const SizedBox(height: 24),
            const Text(
              'Sleep Tips for Better Rest',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            ...SoulWellnessData.sleepTips.map((tip) => BulletPoint(text: tip)),
            const SizedBox(height: 24),
            const _RecommendedSleepCard(),
          ],
        ),
      ),
    );
  }

  String _calculateDuration() {
    if (_bedTime == null || _wakeTime == null) return '0h 0m';
    final record = SleepRecord(
      bedTime: _bedTime!,
      wakeTime: _wakeTime!,
      quality: 'Good',
      date: DateTime.now(),
    );
    return record.duration;
  }
}

class _TimeSelector extends StatelessWidget {
  final String label;
  final TimeOfDay? time;
  final IconData icon;
  final Function(TimeOfDay) onTimeSelected;

  const _TimeSelector({
    required this.label,
    required this.time,
    required this.icon,
    required this.onTimeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.indigo),
        title: Text(label),
        trailing: Text(
          time?.format(context) ?? 'Set Time',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        onTap: () async {
          final selected = await showTimePicker(
            context: context,
            initialTime: time ?? TimeOfDay.now(),
          );
          if (selected != null) onTimeSelected(selected);
        },
      ),
    );
  }
}

class _RecommendedSleepCard extends StatelessWidget {
  const _RecommendedSleepCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purple.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.info, color: Colors.purple.shade700),
                const SizedBox(width: 8),
                const Text(
                  'Recommended Sleep',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Text('Adults (18-64): 7-9 hours'),
            const Text('Seniors (65+): 7-8 hours'),
            const Text('Teenagers: 8-10 hours'),
          ],
        ),
      ),
    );
  }
}

// ============================================
// MEDITATION SCREEN
// ============================================

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meditation Guide'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SectionHeader(title: 'Meditation Techniques'),
          const SizedBox(height: 16),
          ...SoulWellnessData.meditationTechniques.map(
            (technique) => _MeditationCard(technique: technique),
          ),
        ],
      ),
    );
  }
}

class _MeditationCard extends StatelessWidget {
  final MeditationTechnique technique;

  const _MeditationCard({required this.technique});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(technique.icon, color: technique.color, size: 32),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        technique.title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        technique.duration,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(technique.description),
          ],
        ),
      ),
    );
  }
}

// ============================================
// BREATHING SCREEN
// ============================================

class BreathingScreen extends StatelessWidget {
  const BreathingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breathing Exercises'),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SectionHeader(
            title: 'Breathe & Relax',
            subtitle: 'Simple techniques to calm your mind',
          ),
          const SizedBox(height: 24),
          ...SoulWellnessData.breathingTechniques.map(
            (technique) => BulletPoint(text: technique, color: Colors.cyan),
          ),
          const SizedBox(height: 24),
          const InfoCard(
            title: 'Why Breathing Matters',
            content:
                'Controlled breathing activates your parasympathetic nervous system, reducing stress and anxiety.',
            icon: Icons.info_outline,
            color: Colors.cyan,
          ),
        ],
      ),
    );
  }
}

// ============================================
// WELLNESS TIPS SCREEN
// ============================================

class WellnessTipsScreen extends StatelessWidget {
  const WellnessTipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wellness Tips'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SectionHeader(title: 'Daily Wellness Practices'),
          const SizedBox(height: 16),
          ...SoulWellnessData.wellnessTips.map(
            (tip) => _WellnessTipCard(tip: tip),
          ),
        ],
      ),
    );
  }
}

class _WellnessTipCard extends StatelessWidget {
  final WellnessTip tip;

  const _WellnessTipCard({required this.tip});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(tip.icon, color: Colors.amber[700]),
        title: Text(
          tip.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              tip.category,
              style: TextStyle(
                color: Colors.amber[900],
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(tip.description),
          ],
        ),
        isThreeLine: true,
      ),
    );
  }
}

// ============================================
// MOOD JOURNAL SCREEN
// ============================================

class MoodJournalScreen extends StatelessWidget {
  const MoodJournalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mood Journal'),
        backgroundColor: Colors.pink,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.book, size: 80, color: Colors.pink),
              SizedBox(height: 16),
              Text(
                'Mood Journal',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Coming Soon',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================
// GRATITUDE SCREEN
// ============================================

class GratitudeScreen extends StatelessWidget {
  const GratitudeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gratitude Practice'),
        backgroundColor: Colors.red,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, size: 80, color: Colors.red),
              SizedBox(height: 16),
              Text(
                'Gratitude Practice',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Coming Soon',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
