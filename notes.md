# Conteúdo

## Programming logics

### Variables

> As dart is a type specific leanguage, every time you declare a variable whatever it is, you need to tell its type.

    String name = "estevan";
    int age = 17;
    double height = 1.8;
    boolean sex = true;

- Other variable types:

    List names = ["estevan", 2, 1.5]; // you can also add a type restrective to this variables
    List<String> = ["estevan", "estevan2"]/ //only allows to have strings

    Map user = {
        "name": "estevan",
        "age": 17,
    };

### Functions

> Different than Js, you dont need to say the word "function" to declare it. But you have to say what does this function returns before declaring it

    void hello() {
        print("Hello, World!");
    }

    int age() {
        return user["age"];
    }

## Widgets

body: ListView( // hovers verticaly by default when overflowed
    scrollDirection: Axis.horizontal, // ads a horizontal overflow
    children: [
    Container(
        width: 300, // it can overflow the height of the screen
        color: Colors.blue[400],
    ),
    Container(
        width: 300,
        color: Colors.blue[300],
    ),
    Container(
        width: 300,
        color: Colors.blue[300],
    ),
    /*
    
    Expanded(child: Container( // acts like a flex-grow: 1; as long as the container inside of it doesnt have a height
        flex: 2, // puts it twinces biggest than the other expanded widgets
        width: 300,
        color: Colors.blue[200],
    ),)

    */
    ],
),

body: Column(
    mainAxisAlignment: MainAxisAlignment.center, // center in the main axis, that is veritaly in the case of column
    crossAxisAlignment: CrossAxisAlignment.center, // centers in the oposit main axis of the widget, that is horizontaly in the case of columns
    children: [
    Container(
        width: 300,
        height: 300, // it can overflow the height of the screen
        color: Colors.blue[400],
    ),
    Container(
        width: 300,
        height: 300,
        color: Colors.blue[300],
    ),
    Container(
        width: 300,
        height: 300,
        color: Colors.blue[300],
    ),
    /*
    
    Expanded(child: Container( // acts like a flex-grow: 1; as long as the container inside of it doesnt have a height
        flex: 2, // puts it twinces biggest than the other expanded widgets
        width: 300,
        color: Colors.blue[200],
    ),)

    */
    ],
),

body: Center(// body of the application
    child: Container(
    width: 300,
    height: 300,
    decoration: BoxDecoration(
        color: Colors.blue, // can be without being inside the decoration widget as long as it is the only decoratoin widgtet
        borderRadius: BorderRadius.circular(10),
    ),
    padding: EdgeInsets.all(10),
    child: Text("test text", style: TextStyle( // can also be a widget called Icons
        color: Colors.white,
        fontWeight: FontWeight.bold,
    ),),
    ), // child declares the child of a widget than can handle just a single one, and also container is a type of div
),
body: Center(
    child: GestureDetector( // detects a event
    onTap: () {
        print("object");
    },
    child: Container(width: 300,height: 300,color: Colors.blue, child: Text("asdasda"),),
    ),
),

body: Stack(
    alignment: Alignment.center,
    children: [
    Container(width: 300,height: 300,color: Colors.blue,),
    Container(width: 200,height: 200,color: Colors.blue[400],),
    Container(width: 100,height: 100,color: Colors.blue[200],),
    ],
),

body: GridView.builder(
    itemCount: 64,
    gridDelegate:
    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4 /* how many items by row*/),
    itemBuilder: (context, index) => Container(color: Colors.blue, margin: EdgeInsets.all(1),),
),

body: ListView.builder( // builds a list of items based on given length
    itemCount: 10,
    itemBuilder: (context, index) => ListTile(
    title: Text(index.toString()),
    ),
),