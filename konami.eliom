(* ************************************************************************** *)
(* Project: Konami                                                            *)
(* Description: Module to handle an action when the Konami Code is typed      *)
(* Author: db0 (db0company@gmail.com, http://db0.fr/)                         *)
(* Latest Version is on GitHub: https://github.com/db0company/Konami          *)
(* ************************************************************************** *)

{client{

(* code : int list                                                            *)
(* List of Javascript key code for the konami code                            *)
  let code =
    let up = 38
    and downn = 40
    and left = 37
    and right = 39
    and a = 65
    and b = 66 in
    [up; up; downn; downn;
     left; right; left; right;
     b; a]

(* set : (unit -> unit) -> unit                                               *)
(* When the konami code is typed, execute this function                       *)
  let set action =
    let seq = ref code in
    let action_handler ev =
      let correct_key next_keys =
        match next_keys with
          | [] -> action (); code
          | _ -> next_keys in
      let next_seq key next_keys =
        if key = ev##keyCode
        then correct_key next_keys
        else code in
      seq := next_seq (List.hd !seq) (List.tl !seq) in
    let open Event_arrows in
        let _ = run (keydowns Dom_html.document (arr action_handler)) () in ()

}}
