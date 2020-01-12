import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {

  final List<dynamic> peliculas;

  CardSwiper({@required this.peliculas});

  @override
  Widget build(BuildContext context) {

    final _screanSize = MediaQuery.of(context).size; //sirve para tener las dimenciones de la pantalla del dispositivo

    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Swiper(
        layout: SwiperLayout.STACK, // forma en las que pasan las tarjetas
        itemWidth: _screanSize.width * 0.7, //da el 70% ancho de la pantalla
        itemHeight: _screanSize.height *0.5, //da el 50% de largo de la pantalla
        itemBuilder: (BuildContext context,int index){
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network("http://via.placeholder.com/350x150", // tamaño de la tarjeta
              fit: BoxFit.cover,),
          );
        },
        itemCount: peliculas.length,
        //pagination: new SwiperPagination(), //los puntitos que pasan
        //control: new SwiperControl(), //flechas para ir a los costados
      ),
    );
  }
}
