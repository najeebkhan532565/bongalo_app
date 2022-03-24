import 'package:flutter/widgets.dart';

class GalleryExampleItem {
  GalleryExampleItem({
    required this.id,
    required this.resource,
    this.isSvg = false,
  });

  final String id;
  final String resource;
  final bool isSvg;
}

class GalleryExampleItemThumbnail extends StatelessWidget {
  const GalleryExampleItemThumbnail({
    Key? key,
    required this.galleryExampleItem,
    required this.onTap,
  }) : super(key: key);

  final GalleryExampleItem galleryExampleItem;

  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: onTap,
        child: Hero(
          tag: galleryExampleItem.id,
          child: Image.network(galleryExampleItem.resource, height: 80.0),
        ),
      ),
    );
  }
}

List<GalleryExampleItem> galleryItems = <GalleryExampleItem>[
  GalleryExampleItem(
    id: "tag1",
    resource: "https://tse3.mm.bing.net/th?id=OIP.qLVYj_t-HU2Yyx3v_wFgLwHaE6&pid=Api&P=0&w=274&h=182",
  ),
  GalleryExampleItem(id: "tag2", resource: "https://tse1.mm.bing.net/th?id=OIP.xfxxeN5ErdCifxW8r25NcgHaE-&pid=Api&P=0&w=227&h=152", isSvg: true),
  GalleryExampleItem(
    id: "tag3",
    resource: "https://tse4.mm.bing.net/th?id=OIP.iJDJYpi8eY2SzIwQnb0brAHaE7&pid=Api&P=0&w=263&h=175",
  ),
  GalleryExampleItem(
    id: "tag4",
    resource: "https://tse1.mm.bing.net/th?id=OIP.t7oDejXgGZmnDxLqjvrk1gHaE8&pid=Api&P=0&w=263&h=175",
  ),
];