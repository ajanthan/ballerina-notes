### Variables

There are three types of variable declaration supported by Ballerina.
1. var \<variable name> = \<initial value>;

    E.g `var name = "Ajanthan";`

    `var` key word is used to decalre variable without mentioning type. The type is infered from the initilaized value.
2. \<type name> \<variable name> = \<initial value>;
    
    E.g `int age = 24;`
3. \<type name> \<variable name>;

    E.g `int hight;`
    
    It should be assigned a value some where down the code inoder to use it afterwards.