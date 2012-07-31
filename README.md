Konami
======

* __Ocsigen__ is a Web server and powerfull framework in OCaml.
* The __Konami__ __Code__ is a popular cheat code in video games, often used in web pages.
* Konami is an Ocsigen module to handle an action when the Konami Code is typed.


## Documentation

### Module Values

    code : int list

List of Javascript key code for the konami code

    set : (unit -> unit) -> unit

When the konami code is typed, the given function is executed


### Add the Konami Code in your Ocsigen Website

* Copy the file `konami.eliom` with your project sources
* Add it in your Makefile, with the client side files
* In your website source code, add a client side call to the function set:
    set : (unit -> unit) -> unit
The given function will be called when the Konami Code is typed.


### Try the example

* Edit the `example.conf` file (pathnames, port, other configurations)
* Compile using `make`
* Launch using `ocsigenserver -c example.conf`
* Open your browser and try the page


### Another cheat code than Konami Code?

You can edit the `konami.eliom` file to change the `Konami.code` list of keys.



## Copyright/License

     Copyright 2012 Barbara Lepage
  
     Licensed under the Apache License, Version 2.0 (the "License");
     you may not use this file except in compliance with the License.
     You may obtain a copy of the License at
  
         http://www.apache.org/licenses/LICENSE-2.0
  
     Unless required by applicable law or agreed to in writing, software
     distributed under the License is distributed on an "AS IS" BASIS,
     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
     See the License for the specific language governing permissions and
     limitations under the License.


### Author

* Made by __db0__
* Website: http://db0.fr/
* Contact: db0company@gmail.com


### Up to date

Latest version of this project is on GitHub:
https://github.com/db0company/Konami


