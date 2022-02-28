import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:submission_project/detail_furniture.dart';
// import 'package:submission_project/furniture.dart';
import 'detail_furniture.dart';
import 'furniture.dart';

class HomeListScreen extends StatefulWidget {
  final Furniture pilihanFurniture;
  final ValueChanged<Furniture> pilihanFurnitureCallback;

  HomeListScreen({Key? key,
    required this.pilihanFurniture,
    required this.pilihanFurnitureCallback})
      : super(key: key);

  @override
  _HomeListScreenState createState() => _HomeListScreenState();
}

class _HomeListScreenState extends State<HomeListScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: furniturelist.map((furnitures) {
          return Container(
            child: ListTile(
              title: Text(
                furnitures.name,
                style: TextStyle(color: Colors.black),
              ),
              onTap: () => widget.pilihanFurnitureCallback(furnitures),
              selected: widget.pilihanFurniture == furnitures,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                shape: BoxShape.rectangle),
          );
        }).toList());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Furniture'),
        backgroundColor: Colors.cyan,
      ),
      body:Stack(
        children:[
          Container(
            height: 700,
            width: double.infinity,
            color: Colors.lightBlueAccent,
          ),
          Container(),
          ListView.builder(
          itemBuilder: (context, index) {
            late final Furniture furnit = furniturelist[index];
            bool isFavourite = false;
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailListFurniture(furnitures: furnit);
                }));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(flex: 1,
                      child: Image.asset(furnit.imageUrl, width: 200,),
                    ),
                    Expanded(flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              furnit.name,
                              style:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                            Padding(padding: EdgeInsets.all(10),
                              child: Text(furnit.type,style: TextStyle(fontSize: 14),),),

                            SizedBox(height: 100,),
                          ],
                        ),
                      ),
                    ),
                    FavouriteButton(),
                    WishlistButton()
                  ],
                ),
              ),
            );
          },
          itemCount: furniturelist.length,
        ),
        ]
      )
    );
  }
}


class FavouriteButton extends StatefulWidget {
  const FavouriteButton({Key? key}) : super(key: key);

  @override
  _FavouriteButtonState createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {

  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isFavourite ? Icons.star: Icons.star_border,color: Colors.yellowAccent,),
      onPressed: () {
        setState(() {
          isFavourite = !isFavourite;
        });
      },
    );
  }
}
class WishlistButton extends StatefulWidget {
  const WishlistButton({Key? key}) : super(key: key);

  @override
  _WishlistButtonState createState() => _WishlistButtonState();
}

class _WishlistButtonState extends State<WishlistButton> {
  bool isWish = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isWish ? Icons.shopping_cart_rounded: Icons.shopping_cart_outlined,color: Colors.grey,),
      onPressed: () {
        setState(() {
          isWish = !isWish;
        });
      },
    );
  }
}





// class GridHome extends StatelessWidget {
//   late final int gridcount;
//
//   GridHome({required this.gridcount});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scrollbar(
//         isAlwaysShown: true,
//         child: Padding(
//           padding: EdgeInsets.all(8),
//           child: GridView.count(
//             crossAxisSpacing: 16,
//             mainAxisSpacing: 16,
//             crossAxisCount: gridcount,
//             children: furniturelist.map((datafurniture) {
//               return InkWell(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context){
//                     return DetailFurniture(furnitures: datafurniture);
//                   }));
//                 },
//                 child: Card(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: <Widget>[
//                       Expanded(child: Image.asset(
//                           datafurniture.imageUrl,
//                       fit: BoxFit.cover,
//                       ),
//                       ),
//                       SizedBox(height: 8,),
//                       Padding(
//                           padding: EdgeInsets.only(left: 8),
//                       child: Text(
//                         datafurniture.name,
//                         style:
//                             TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(left: 8, bottom: 8),
//                         child: Text(datafurniture.desc),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//         ));
//   }
// }
