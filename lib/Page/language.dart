import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String selectedLanguage = "English";

  final List<Map<String, String>> languages = [
    {'name': 'English', 'flag': 'media/USA.png'},
    {'name': 'Australia', 'flag': 'media/Australia.png'},
    {'name': 'French', 'flag': 'media/France.png'},
    {'name': 'Spanish', 'flag': 'media/Spain.png'},
    {'name': 'Armenian', 'flag': 'media/Armenia.png'},
    {'name': 'Vietnamese', 'flag': 'media/Vietnam.png'},
  ];

  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final filteredLanguages = languages
        .where((lang) =>
        lang['name']!.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Bar
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFD3D3D3),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                    size: 20,
                    color: Color(0xFF1E1E2D),
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      'Language',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              onChanged: (value) => setState(() => searchQuery = value),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFF5F5F5),
                hintText: 'Search Language',
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Language List
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              itemCount: filteredLanguages.length,
              separatorBuilder: (context, index) =>
              const Divider(height: 1, thickness: 0.8),
              itemBuilder: (context, index) {
                final lang = filteredLanguages[index];
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 6),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(lang['flag']!),
                    radius: 20,
                  ),
                  title: Text(
                    lang['name']!,
                    style: const TextStyle(fontSize: 16),
                  ),
                  trailing: selectedLanguage == lang['name']
                      ? const Icon(Icons.check_circle, color: Colors.blue)
                      : null,
                  onTap: () {
                    setState(() {
                      selectedLanguage = lang['name']!;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
