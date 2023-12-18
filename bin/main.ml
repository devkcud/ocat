let cat file_path: string =
  try
    let ic = open_in file_path in
    try
      let s = really_input_string ic (in_channel_length ic) in
      close_in ic;
      s
    with e ->
      close_in_noerr ic;
      raise e
  with | Sys_error msg ->
    msg
;;

let () =
  try
    cat Sys.argv.(1) |> print_endline
  with _ ->
    print_endline ("Usage: " ^ Sys.argv.(0) ^ " <filename>")
;;
