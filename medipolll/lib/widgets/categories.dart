import 'package:flutter/material.dart';
import 'package:medipolll/models/dummy_data.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      /*Flutter GridView, herhangi bir programlama dilinde 2-D Array'e benzeyen bir pencere öğesidir.
       Adından da anlaşılacağı gibi, bir Grid üzerinde bir şey göstermemiz gerektiğinde GridView Widget'ı kullanılır.
       GridView'da görüntüleri, metinleri, simgeleri vb. Görüntüleyebiliriz.*/
      padding: EdgeInsets.all(10),
      children: DUMMY_CATEGORIES
          .map((item) => CategoryItem(item.id, item.title, item.color,item.text,item.imageUrl))
      //Map yapısı aslında bir koleksiyon yapısıdır. Aynı zamanda bir sözlük gibi de düşünebiliriz.
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
    );
  }
}
