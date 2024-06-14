   body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          crossAxisSpacing: 0,
          childAspectRatio: 1.9
        ),
        itemCount: MyItems.length,
          itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){mySnackBar(context, MyItems[index]['title']);},
            onDoubleTap: (){mySnackBar(context, "double");},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 100,
              child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill,),
            ),
          );
          },
      ),
