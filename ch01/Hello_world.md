## Hello World
Now let's write the traditional hello world program in Balla    rina language. Language tool itsel provide a way to generate hello world program.

```text
Ajanthans-MacBook-Pro:hello_world ajanthan$ ballerina init
Ballerina project initialized
```

This command will create a hello world programm with basic project configurations.

```text
.
├── Ballerina.toml
└── hello_service.bal

```
Following is the generated program.

```bal
// A system module containing protocol access constructs
// Module objects referenced with 'http:' in code
import ballerina/http;

# A service is a network-accessible API
# Advertised on '/hello', port comes from listener endpoint
service hello on new http:Listener(9090) {

    # A resource is an invokable API method
    # Accessible at '/hello/sayHello
    # 'caller' is the client invoking this resource

    # + caller - Server Connector
    # + request - Request
    resource function sayHello(http:Caller caller, http:Request request) {

        // Create object to carry data back to caller
        http:Response response = new;

        // Set a string payload to be sent to the caller
        response.setTextPayload("Hello Ballerina!");

        // Send a response back to caller
        // Errors are ignored with '_'
        // -> indicates a synchronous network-bound call
        _ = caller -> respond(response);
    }
}
```

Above code is starting a http server with port 9090 and handling request to resource `hello/sayHello` with a text response `Hello Ballerina!`. Let's try to run this and see how it responds.
```text

Ajanthans-MacBook-Pro:hello_world ajanthan$ ballerina  run hello_service.bal
Initiating service(s) in 'hello_service.bal'
[ballerina/http] started HTTP/WS endpoint 0.0.0.0:9090

``` 
The http server started on port 9090 as mentioned earlier. Let's try to access the service by calling it through a curl command.
```text
Ajanthans-MacBook-Pro:hello_world ajanthan$ curl  localhost:9090/hello/sayHello
Hello Ballerina!
```

As expected the server responds with a text `Hello Ballerina!`.