import 'package:flutter/material.dart';
import 'package:medipolll/widgets/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;   /*final : Oluşturulan değişken sabittir, daha sonra farklı bir değer atanamaz.Değer kullanıldığı andan
  itibaren ram üzerinde tutulmaya başlar.  Değer tipini belirtmek gerekir.*/
  final Color color;
  final String id;
  final String text;
  final String imageUrl;

  CategoryItem(this.id, this.title, this.color,this.text,this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return InkWell( //Kullanıcı tarafından gerçekleştirilen dokunma eylemine yanıt verir.
      onTap: () {
        Navigator.push( /*Navigator, mobil uygulamanız içerisinde yer alacak sayfaların
         birbirleri arasındaki geçişleri sağlayan bir sınıftır.*/
          context,
          MaterialPageRoute(builder: (context) => CategoryMealsScreen(
                    id: id,      // CategoryMealsScreen sayfasında id,title,texr,imageUrl yi olduğu tanımlamayı sağlar.
                    title: title,
                    text:text,
                    imageUrl: imageUrl,)),);},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(padding: EdgeInsets.all(15),
        child: Text(title),
        decoration: BoxDecoration(gradient: LinearGradient(colors: [color.withOpacity(0.7), color,], //Renk tonu ayarlama
            begin: Alignment.topLeft,  //// Aligment: Nesnenin düzlemdeki konumunu gösterir.
            end: Alignment.bottomRight,),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
