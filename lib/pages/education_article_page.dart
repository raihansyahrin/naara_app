import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/models/education_model/education_model.dart';

class EducationArticlePage extends StatefulWidget {
  final EducationAirModel eduArticle;
  const EducationArticlePage({
    super.key,
    required this.eduArticle,
  });

  @override
  State<EducationArticlePage> createState() => _EducationArticlePageState();
}

class _EducationArticlePageState extends State<EducationArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(widget.eduArticle.content),
    );
  }
}
