### Ballerina Module
##### What is Ballerina Module?
Module is the way to package ballerina code and share with other ballerina programs and community.
#### How to create a module?
To create a ballerina module first step is to create a ballerina project. You can create a ballerina project using `ballerina init` command.

```text
ballerina init
```
This will create a bare minimal ballerina project which is a directory with Ballerina.toml file. Minimal Ballerina.toml will look like below.
```toml
[project]
org-name = "ajanthan"
version = "0.0.1"
```
Once you have a ballerina project, all the subdirectory under the project directory will become a module.
Module can be built into a distribution and shared with other programs.

