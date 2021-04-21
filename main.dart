import 'package:flutter/material.dart';

void main() {
  runApp(PantallaPrincipal());
}

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(padding: EdgeInsets.symmetric(horizontal: 2.0, vertical: 3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Instagram',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Dancing Script',
                    fontSize: 30.0,
                  )),
                  
                ],
              ),
              Row(
                children: <Widget>[
                Image.asset('assets/iconos/botonInstagram.png', width: 45.0, height: 45.0,),
                Image.network(
                'https://raw.githubusercontent.com/CrissAlvarezH/InstagramPostClone/master/icons/icono_mensaje.png',
                width: 25.0,
                height: 25.0,
                ),
                SizedBox(width: 7.0,),
                Image.network(
                'https://raw.githubusercontent.com/CrissAlvarezH/InstagramPostClone/master/icons/icono_corazon.png',
                width: 25.0,
                height: 25.0,),
              ]),
              ]),
          ),),
        body: InstagramPost(),
      ),
    );
  }
} 


class InstagramPost extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //* Cabecera
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),

          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                //Hace la imagen ovalada
                ClipOval(
                  child: Image.network(
                  'https://es.web.img2.acsta.net/pictures/17/02/08/16/50/452749.jpg',
                  width: 50.0,
                  height: 50.0,
                  //Con esto, hacemos que la imagen haga zoom, hasta que abarce todo su contenedor
                  fit: BoxFit.cover,
                )),

                //Solo es una cajita, en este caso la usaremos para agregar un espacio 
                SizedBox(width: 13.0),

                Text(
                  'Will',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),

            Icon(Icons.more_vert),
          ],
        )
        ),

        //* Imagen del post}
        Image.network(
          'https://cdn.aarp.net/content/dam/aarp/entertainment/movies-for-grownups/2020/07/1140-will-smith-esp.imgcache.rev.web.900.518.jpg'),

        //Inconos de interaccion con el usuario
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),

          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
              
              Image.network(
              'https://raw.githubusercontent.com/CrissAlvarezH/InstagramPostClone/master/icons/icono_corazon.png',
              width: 25.0,
              height: 25.0,),
              SizedBox(width: 7.0),
            Image.network(
              'https://raw.githubusercontent.com/CrissAlvarezH/InstagramPostClone/master/icons/icono_mensaje.png',
              width: 25.0,
              height: 25.0,
              ),

            SizedBox(width: 7.0),
            Image.network(
              'https://raw.githubusercontent.com/CrissAlvarezH/InstagramPostClone/master/icons/icono_enviar.png',
              width: 25.0,
              height: 25.0,
            ),
            ]),


            Image.network(
              'https://raw.githubusercontent.com/CrissAlvarezH/InstagramPostClone/master/icons/icono_guardar.png',
              width: 25.0,
              height: 25.0,
            ),
          ],
        )),      
      
      
        //Likes
        Row(
          children: <Widget>[
            SizedBox(width: 15.0,),
            ClipOval(
              child: Image.network(
                'https://static.wikia.nocookie.net/disney/images/f/f9/JohnCena.jpeg/revision/latest/top-crop/width/360/height/450?cb=20181228054622&path-prefix=es',
                width: 30.0,
                height: 30.0,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(width: 15.0,),

            Text('Le gusta a'),
            SizedBox(width: 5.0),
            Text(
              'Jhon cena',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 5.0),
            Text('y'),
            SizedBox(width: 5.0),
            Text(
              '1,950 mas',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )
            ),
          ],
        ),
      ],
    );
  }
}