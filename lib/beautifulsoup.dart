import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart';

class Beautifulsoup {
  String html_doc;
  Document doc;
  Beautifulsoup(this.html_doc){
    doc = parse(html_doc);
  }
  Element call(String selector) => doc.querySelector(selector);

  List<String> find_all(String selector){
    return doc.querySelectorAll(selector).map((e)=>e.outerHtml).toList();
  }

  String get_text(){
    return doc.querySelector("html").text;
  }
  
}
