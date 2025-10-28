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

