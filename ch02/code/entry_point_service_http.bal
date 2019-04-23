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