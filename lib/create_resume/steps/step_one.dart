import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:niu_job/resources/strings.dart';

// ignore: must_be_immutable
class StepOne extends StatelessWidget {
  var _fullNameController = TextEditingController();
  var _emailController = TextEditingController();
  var _githubController = TextEditingController();
  var _skypeController = TextEditingController();
  var _personalWebsiteController = TextEditingController();

  var _fullNameNode = FocusNode();
  var _emailNode = FocusNode();
  var _githubNode = FocusNode();
  var _skypeNode = FocusNode();
  var _personalWebNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(Strings.textCreateResumeTitle,
                      style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 16),
                  child: Text(Strings.textCreateResumeSubtitle,
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      )),
                ),
                Form(
                  autovalidate: true,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: TextFormField(
                          onFieldSubmitted: (value) => _onFocusNodeChange(
                              context, _fullNameNode, _emailNode),
                          focusNode: _fullNameNode,
                          controller: _fullNameController,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: Strings.textFullNameLabel,
                              hintText: Strings.textFullNameHint,
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: TextFormField(
                          onFieldSubmitted: (value) => _onFocusNodeChange(
                              context, _emailNode, _githubNode),
                          focusNode: _emailNode,
                          controller: _emailController,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              labelText: Strings.textEmailLabel,
                              hintText: Strings.textEmailHint,
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: TextFormField(
                          onFieldSubmitted: (value) => _onFocusNodeChange(
                              context, _emailNode, _skypeNode),
                          focusNode: _githubNode,
                          controller: _githubController,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              prefixIcon: Icon(FontAwesomeIcons.github),
                              labelText: Strings.textGithubLabel,
                              hintText: Strings.textGithubHint,
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: TextFormField(
                          onFieldSubmitted: (value) => _onFocusNodeChange(
                              context, _skypeNode, _personalWebNode),
                          controller: _skypeController,
                          focusNode: _skypeNode,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              prefixIcon: Icon(FontAwesomeIcons.github),
                              labelText: Strings.textSkypeLabel,
                              hintText: Strings.textSkypeHint,
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: TextFormField(
                          focusNode: _personalWebNode,
                          controller: _personalWebsiteController,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                              prefixIcon: Icon(FontAwesomeIcons.github),
                              labelText: Strings.textPersonalWebLabel,
                              hintText: Strings.textPersonalWebHint,
                              border: OutlineInputBorder()),
                        ),
                      ),
                      OutlineButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_right),
                          label: Text("NEXT"))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _onFocusNodeChange(context, FocusNode currentFocus, nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}