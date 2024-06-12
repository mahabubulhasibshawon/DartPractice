 MyAlertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text("Alert ! "),
                content: Text("Are you sure ??"),
                actions: [
                  TextButton(onPressed: (){
                    MySnackBar("Okk Done", context); //slack txt
                    Navigator.of(context).pop();//closing alert box
                  }, child: Text("Yes")),
                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
                ],
              )
          );
        });
 }
// button for showing alert
body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            ElevatedButton(onPressed: (){MyAlertDialog(context);}, child: Text("Elv btn")),
          ],
      ),
