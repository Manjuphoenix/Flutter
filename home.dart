import 'package:flutter/material.dart';
myapp(){


  var tit = Text(
    "Sticky notes",
    textDirection: TextDirection.ltr, 
    style: TextStyle(fontStyle: FontStyle.normal,),);
  
  var abc = Text(
    "DUDES",
    textDirection: TextDirection.ltr, 
    style: TextStyle(fontStyle: FontStyle.italic,),);

  var image = Image.network(
    'https://lh3.googleusercontent.com/-rmZl5fh50_Mvz39LosC-L0yY6EPeqDMPsGAZk7N_9jlmLvtxQGpy6eubfwg25AT8gglCSKwCYmOhODtFJ9aICGgBjrVrs5l6mrgZV4iyDc8o3uqF7mfrk2VLCycWnm2dSN9Zg2JxschJH02FOESP5GK6e2kA5Ljn7Gk64ntx8iLVZRbL4kUkx-aEcUpZXLcZDS2zYrNC4F_KsRe1MDaNfduK7se0HXvWfkWszihrVWY80nzCIxAV56OyyGsiWvDlfSqa4PntWokqD6X8dixp6JP1kRzRo4cJnP6nnr5Qy2QSbdY4H1HM5xqtTt7pE07ct-RQwiy6TlXB-lICeSNzjrI4dmB9i1SocLpgQ-7uSIH_X4u1WSJsEKZiQWYAdUzf3rb7Lfy0hbGL--fw3LOUz8y7MwfoTY4ik4M4VI5NfRwwySGNd4ds3I6pdUKQU4wRIziFHsCBsEc6v61C2f9erhAHSD4LfSnaJ_LPhXIBaAsn-Kcg3RKYDr9UKCYDwdGec4fwzdZFBAql7vk9V1TsOSVPUEkohBWZiM0Tju1dFWXDV7ZZBFdmBUQENUmQ61eT8yJG9VAiWg7toPy-JOrmple_X_2cDbNWQPEvNOiL6ZPHu5HLLpu0Hta_N5G7mruFQGueixFSixTvgUQNJ97nuhFU1toK1rxSVGQBWb5o1ZxbSzjDnq0CUapHjD5cg=w482-h351-no?authuser=0',
  height: double.infinity,
  width: double.infinity,
  );


  var home = Container(
  height: 250,
  width: 250,
  child: image,
  margin: EdgeInsets.all(2.0),
  color: Colors.green[200],
  );

  var bar = AppBar(
    title: tit, 
    backgroundColor: Colors.yellow[600],
    actions: <Widget>[],
    );

  var myhome = Scaffold(
    appBar: bar,
    backgroundColor: Colors.yellow[50],
    body: Center(child: home,),
    );

  return myhome;

}