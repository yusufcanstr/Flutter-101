import 'package:flutter/material.dart';
import 'package:information_card/101/icon_learn.dart';
import 'package:information_card/101/image_learn.dart';
import 'package:information_card/101/stack_learn.dart';
import 'package:information_card/product/language/language.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.7);
  int _currentPageIndex  = 0;

  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_left),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        title: Text(
          LanguageItems.pageviewLearnTitle,
          style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        padEnds: false,
        children: const [ImageLearn(), IconViewLearn(), StackLearn()],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
