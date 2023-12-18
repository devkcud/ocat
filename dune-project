(lang dune 3.12)

(name ocat)

(generate_opam_files true)

(source
 (github devkcud/ocat))

(authors "devkcud")

(maintainers "devkcud")

(license "MIT")

(package
 (name ocat)
 (synopsis "Clone of cat")
 (description "Reads a file and prints its contents")
 (depends ocaml dune))
