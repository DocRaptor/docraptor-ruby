# Review newly generated files

This directory helps with review of generated files where we lagely want
the content to be custom.

The project `README.md` is a good example. We heavily custimize
`README.md` based on our particular use case. There are also important
changes to the generated `README.md` that should be reviewed when it is
updated. These include things like new minimum language versions, or
client API changes.

If you add the `README.md` to the `.openapi-generator-ignore` list then
you never see the updates, making it easy to miss things. If you don't
add it to the `.openapi-generator-ignore` list then any uncommitted
updates to the `README.md` are lost when running
`script/generate_language`.
