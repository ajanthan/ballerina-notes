import ballerina/io;
import ajanthan/module_01 as name;

public function main(string... args) {
    io:println("My Fullname is: "+name:getFullName());
}