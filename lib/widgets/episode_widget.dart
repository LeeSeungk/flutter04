import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/webtoon_episode_model.dart';

class Episode extends StatelessWidget {
  const Episode({super.key, required this.episode, required this.webtoonid});

  onButtonTap() async {
    final url = Uri.parse(
        "https://comic.naver.com/webtoon/detail?titleId=$webtoonid&no=${episode.id}");
    await launchUrl(url);
  }

  final String webtoonid;
  final WebtoonEpisodeModel episode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.green),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              blurRadius: 7,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                episode.title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 15),
              ),
              const Icon(
                Icons.chevron_right_rounded,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
