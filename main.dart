void main(){
    print("Hello, Instant!");
    int x;
    x=283;
    double height = 180.5;
    // num number = 180 or 180.5       // "num" it can be used for both int and double

    List<String> users1 = ["ahmed", "ahmed", "Ali", "hassan"];
    print(users1);
    Set<String> setUser = {};
    setUser.addAll(users1);
    print(setUser);

    Map user1 = {
        "id" : 0,
        "username" : "Ali",
        "age" : 21,
        "courses" : [
                {
                "id" : "CS1234",
                "title" : "Machine learning",
                "hours" : 3,
                "tests" : [
                    {
                        "id": 1,
                        "date" : "12 oct.",
                        "score" : 56
                    },
                    {
                        "id": 2,
                        "date" : "25 oct.",
                        "score" : 87
                    }
                ]
            },
                {
                "id" : "CS12345",
                "title" : "OOP",
                "hours" : 3,
                "tests" : [
                    {
                        "id": 1,
                        "date" : "12 oct.",
                        "score" : 56
                    },
                    {
                        "id": 2,
                        "date" : "25 oct.",
                        "score" : 87
                    }
                ]
            }
        ]
    };

    Map user2 = {
        "id" : 0,
        "username" : "Hassan",
        "age" : 22,
        "courses" : [
                {
                "id" : "CS1234",
                "title" : "Data Structures",
                "hours" : 3,
                "tests" : [
                    {
                        "id": 1,
                        "date" : "12 oct.",
                        "score" : 66
                    },
                    {
                        "id": 2,
                        "date" : "25 oct.",
                        "score" : 85
                    }
                ]
            },
                {
                "id" : "CS12345",
                "title" : "Algorithm",
                "hours" : 3,
                "tests" : [
                    {
                        "id": 1,
                        "date" : "12 Dec.",
                        "score" : 56
                    },
                    {
                        "id": 2,
                        "date" : "5 Jul.",
                        "score" : 55
                    }
                ]
            }
        ]
    };

    List<Map> allUsers = [user1, user2];
    print(allUsers);
}   