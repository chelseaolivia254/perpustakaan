import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://ozatatqfogsmbzakrzlk.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im96YXRhdHFmb2dzbWJ6YWtyemxrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1NTQwMDYsImV4cCI6MjA0NzEzMDAwNn0.aCWLx7VyuvVHxiMmd24P4ueZ1FGYO0xUPzbwSh2Is14');
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Perpustakaan',
      home: BookListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}