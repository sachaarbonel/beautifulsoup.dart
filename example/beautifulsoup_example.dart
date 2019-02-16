import 'package:beautifulsoup/beautifulsoup.dart';
import 'package:html/dom.dart';

main() {
  String document = """
  <html><head><title>The Dormouse's story</title></head>
  <body>
  <p class="title"><b>The Dormouse's story</b></p>

  <p class="story">Once upon a time there were three little sisters; and their names were
  <a href="http://example.com/elsie" class="sister" id="link1">Elsie</a>,
  <a href="http://example.com/lacie" class="sister" id="link2">Lacie</a> and
  <a href="http://example.com/tillie" class="sister" id="link3">Tillie</a>;
  and they lived at the bottom of a well.</p>

  <p class="story">...</p>
  """;
  
  var soup = Beautifulsoup(document);
  
  print(soup("title").outerHtml); //soup.title
  print(soup("title").localName); //soup.title.name
  print(soup("title").text); //soup.title.string
  print(soup("title").parent.localName); //soup.title.parent.name
  print(soup("p").outerHtml); //soup.title.parent.name
  print(soup("p").attributes["class"]); //soup.p['class']
  print(soup("a").outerHtml); //soup.a
  print(soup.get_text()); //soup.get_text()
  print(soup.find_all("a")); //soup.find_all a
}
