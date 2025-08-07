# Verso Templates

This repository contains templates that can be used to get started with Verso. Each template is a
full project that can be copied directly and used a basis for your own writing.


# Book-Like Examples

## Package Description

This example demonstrates a way to use Verso to describe Lean code.

The code is written in a different version of Lean than the documentation. This decoupling is
important for maintenance: it is possible to adopt a Verso update that requires a newer version of
Lean, even if the example code cannot be yet updated for some reason. Even if both can be updated,
updating first one and then the other can be convenient.
   
Example code is included via special _anchor comments_. Each pair of `-- ANCHOR: XYZ` and
`-- ANCHOR_END: XYZ` defines a named code example `XYZ`. When code is included in the document from
an anchor, it is also included in the document; this makes it easier to read the source code and it
ensures that changes to the code are noticed when they might also require changes in the text.



## Textbook 


TODO

# Web

## Blog

The blog example provides a personal website that describes a few
smaller projects in Verso.

## Project Description

