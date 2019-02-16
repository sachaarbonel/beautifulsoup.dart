import 'dart:collection';

import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';

class Beautifulsoup {
  String html_doc;
  Document doc;
  Beautifulsoup(this.html_doc){
    doc = parse(html_doc);
  }

  Element find({String id}) {
    return doc.querySelector(id);
  }

  Element call(String selector) => doc.querySelector(selector);

  List<Element> find_all(String selector){
    return doc.querySelectorAll(selector);
  }

  String get_text(){
    return doc.querySelector("html").text;
  }
  
  String print(){
    return doc.querySelector("html").outerHtml;
  }

  String attr(Element e,String attribute) => e.attributes[attribute];
}
