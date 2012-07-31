(* ************************************************************************** *)
(* Project: Konami                                                            *)
(* Description: Example of usage of the module Konami. See konami.eliom       *)
(* Author: db0 (db0company@gmail.com, http://db0.fr/)                         *)
(* Latest Version is on GitHub: https://github.com/db0company/Konami          *)
(* ************************************************************************** *)

{shared{

  open Eliom_content
  open Html5.D
  open Eliom_parameter

}}

module Example_app =
  Eliom_registration.App
    (struct
      let application_name = "konami"
     end)

let main_service =
  Eliom_service.service
    ~path:[""]
    ~get_params:unit
    ()

{client{

  let plop () = Dom_html.window##alert(Js.string
					 ("I'm a secret message."
					  ^ "\nCongratulations, you found me!"))
  let _ = Konami.set plop

}}

let _ = 
  Example_app.register
    ~service:main_service
    (fun () () ->
      Lwt.return
        (html
	   (head (title (pcdata "Ocsigen Konami Code Example")) [])
           (body [h1 [pcdata "Hello world"];
		  p [pcdata "You should try to type the Konami Code."]])))
