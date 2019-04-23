### Entry Point
Ballerina has two entry point for a executable code.
1. Function
2. Service

Any public function can be used as entry point. While running the program the function name should be in the commanline arguement as follows.

```ballerina
import ballerina/io;
public function hello() {
    io:println("Hello from hello function");
}
```
`ballerina run --printreturn hello_function.bal:hello`

Otherwise the runtime will look for a public function with name `main`.

```ballerina
import ballerina/io;
public function main(string... args) {
    io:println("Hello from main function");
}
```
`ballerina run hello_function.bal`

Second type of entry point is service. Services are a network callable APIs. It supports multiple transports and protocols such as http,gRPC and JMS.

```ballerina
import ballerina/io;
import ballerina/http;
@http:ServiceConfig {
    basePath:"/"
}
service Service on new http:Listener(8080) {
    @http:ResourceConfig {
        methods:["GET"],
        path:"/"
    }
    resource function Resource(http:Caller caller, http:Request request) {
        io:println("Hello from hello service");
        _=caller->respond("");
    }
}
```
`ballerina run hello_service.bal`