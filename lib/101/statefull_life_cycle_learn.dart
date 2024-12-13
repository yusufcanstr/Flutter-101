import 'package:flutter/material.dart';

class StatefllLifeCycleLearn extends StatefulWidget {
  const StatefllLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefllLifeCycleLearn> createState() => _StatefllLifeCycleLearnState();
}

class _StatefllLifeCycleLearnState extends State<StatefllLifeCycleLearn> {
  String _message = "";
  late final bool _isOdd;

  // çalışma sırıalaması => initState -> didUpdateWidget -> didChangeDependencies -> Build -> dispose
  //
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("C");
  }

  @override
  void didUpdateWidget(covariant StatefllLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {
        
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _message = "";
  }

  //initState den sonra ekran çizilir !
  //Mesaj tekse yanına tek yoksa çift yaz.
  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;

    _computeName();
    print("A");
  }

  void _computeName() {
    if (_isOdd) {
      _message += " Çift";
    } else {
      _message += " Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent.shade700,
          title: Text(_message),
        ),
        body: Center(
          child: widget.message.length.isOdd
              ? TextButton(onPressed: (() {}), child: Text(_message))
              : ElevatedButton(onPressed: (() {}), child: Text(_message)),
        ));
  }
}
