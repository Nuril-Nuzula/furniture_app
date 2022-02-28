import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'furniture.dart';

class DetailFurniture extends StatefulWidget {
  const DetailFurniture({Key? key, required Furniture furnitures})
      : super(key: key);

  @override
  _DetailFurnitureState createState() => _DetailFurnitureState();
}

class _DetailFurnitureState extends State<DetailFurniture> {
  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(''),
        )
      ],
    );
    return Container();
  }
}

class DetailListFurniture extends StatelessWidget {
  late final Furniture furnitures;

  DetailListFurniture({required this.furnitures});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
        backgroundColor: Colors.cyan,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      furnitures.imageUrl,
                      width: 750,
                      height: 300,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    child: Container(
                      width: 400,
                      child: Text(
                        furnitures.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    furnitures.type,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FavouriteButton(),
                    LikeButton(),
                    ShareButton(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(furnitures.price,
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                      color: Colors.blue,
                      child: Container(
                        width: 800,
                        child: Text(furnitures.desc,
                            style: TextStyle(color: Colors.white,
                                fontSize: 15, fontWeight: FontWeight.normal)),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
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
      icon: Icon(
        isFavourite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavourite = !isFavourite;
        });
      },
    );
  }
}

class ShareButton extends StatefulWidget {
  const ShareButton({Key? key}) : super(key: key);

  @override
  _ShareButtonState createState() => _ShareButtonState();
}

class _ShareButtonState extends State<ShareButton> {
  bool isShare = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isShare ? Icons.share : Icons.share_outlined,
        color: Colors.grey,
      ),
      onPressed: () {
        setState(() {
          isShare = !isShare;
        });
      },
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLike ? Icons.thumb_up_alt_sharp : Icons.thumb_up_outlined,
        color: Colors.grey,
      ),
      onPressed: () {
        setState(() {
          isLike = !isLike;
        });
      },
    );
  }
}
