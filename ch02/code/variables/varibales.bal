import ballerina/io;
public function main(string... args) {
    //Three types of variable declaration
    //1. var <variable name>=<initial value>;
    var name = "Ajanthan";
    //2. <type name> <variable name>=<initial value>;
    int age = 24;
    //3. <type name> <variable name>
    //It should be assigned a value some where down the code inoder to use afterwards
    int hight;

    io:println("Name: ", name);
    io:println("Age: ", age);
    hight = age * 13;
    io:println("Hight: ", hight);

}
