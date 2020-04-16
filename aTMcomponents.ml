

(* Customer account identifiers *)
type id = int

(* Possible actions that an ATM customer can perform *)
type action =
  | Balance           (* balance inquiry *)
  | Withdraw of int   (* withdraw an amount *)
  | Deposit of int    (* deposit an amount *)
  | Next              (* finish this customer and move on to the next one *)
  | Finished          (* shut down the ATM and exit entirely *)
;;

(*....................................................................
  Initializing database of accounts
*)
(* A specification of a customer name and initial balance for
   initializing the account database *)
type account_spec = {name : string; id : id; balance : int} ;;


class atm (accounts : account_spec list) =
  object(this)

  val mutable db = []
  
  (* initialize accts -- Establishes a database of accounts, each with a
     name, aribtrary id, and balance. The names and balances are
     initialized as per the `accts` provided. *)

  method initialize (lst : account_spec list) : unit =
    db <- lst

  (*....................................................................
    Acquiring information from the customer
  *)

  (* acquire_id () -- Requests from the ATM customer and returns an id
     (akin to entering one's ATM card), by prompting for an id number
     and reading an id from stdin. *)
  method acquire_id :id =
    failwith "TODO" ;;

  (* acquire_amount () -- Requests from the ATM customer and returns an
     amount by prompting for an amount and reading an int from stdin. *)
  method acquire_amount : int =
    failwith "TODO";;

  (* acquire_act () -- Requests from the user and returns an action to
     be performed, as a value of type action *)
  method acquire_act : action =
    failwith "TODO";;

  (*....................................................................
    Querying and updating the account database

    These functions all raise Not_found if there is no account with the
    given id.
  *)

  (* get_balance id -- Returns the balance for the customer account with
     the given id. *)
  method get_balance : int =
    failwith "TODO";;

  (* get_name id -- Returns the name associated with the customer
     account with the given id. *)
  method get_name : string =
    failwith "TODO";;

  (* update_balance id amount -- Modifies the balance of the customer
     account with the given id,setting it to the given amount. *)
  method update_balance : id -> int -> unit  =
  ;;

  (*....................................................................
    Presenting information and cash to the customer
  *)

  (* present_message message -- Presents to the customer (on stdout) the
     given message followed by a newline. *)
  method present_message : string -> unit ;;

  (* deliver_cash amount -- Dispenses the given amount of cash to the
     customer (really just prints to stdout a message to that
     effect). *)
  method deliver_cash : int -> unit ;;
end
