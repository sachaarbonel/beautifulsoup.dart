A library for Dart developers.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'package:beautifulsoup/beautifulsoup.dart';

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
  print(soup.find_all("a").map((e)=> (e.outerHtml)).toList());
}
```
Modifying text via class name
```dart
  String document = """
   <p id="RipVanWinkle">
    RipVanWinkle paragraph.
  </p>
    """;
    
  var soup = Beautifulsoup(document);
  soup.find(id:"#RipVanWinkle").text = "Wake up, sleepy head!";
  print(soup.print());
```

Modify text by tag
```dart
  String document = """
  <a href="http://example.com/">I linked to <i>example.com</i></a>
  """;
    
  var soup = Beautifulsoup(document);
  soup("a").text ="New link text";
  print(soup.print());
```

Find all links in a html document 
```dart
String document = """
    <html>
    <head>
      <title>
      The Dormouse's story
      </title>
    </head>
    <body>
      <p class="title">
      <b>
        The Dormouse's story
      </b>
      </p>
      <p class="story">
      Once upon a time there were three little sisters; and their names were
      <a class="sister" href="http://example.com/elsie" id="link1">
        Elsie
      </a>
      ,
      <a class="sister" href="http://example.com/lacie" id="link2">
        Lacie
      </a>
      and
      <a class="sister" href="http://example.com/tillie" id="link2">
        Tillie
      </a>
      ; and they lived at the bottom of a well.
      </p>
      <p class="story">
      ...
      </p>
    </body>
    </html>
    """;
    
    var soup = Beautifulsoup(document);
    var hyperlinks = soup.find_all("a").map((e)=> print(soup.attr(e,"href"))).toList();
    
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://github.com/Sach97/beautifulsoup.dart/issues
