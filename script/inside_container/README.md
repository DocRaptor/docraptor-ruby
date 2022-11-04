This folder contains scripts that are only intended to be run inside
of a relevant docker container. For example, `script/test` may run
`script/inside_container/test` inside a container with particular
versions of libraries to make it easy to test the agent in multiple
settings. It's possible these scripts will work outside of any
particular container, but that may or may not mean anything.
