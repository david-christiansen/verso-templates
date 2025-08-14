# Verso Templates

This repository contains templates that can be used to get started with Verso. Each template is a
full project that can be copied directly and used a basis for your own writing.

Each example can be built or modified independently. Additionally, they can all be examined together
by running `./generate.sh`, which builds all the examples, copies their output to a single
directory, and adds an overview page. To build and view all the examples, run:
```
$ ./generate.sh
$ python3 ./serve.py 8000
```
The page is served at `localhost:8000`.


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

The textbook example demonstrates how to use a single version of Lean for code examples and the
document's text. In this example, the Lean code blocks elaborate together with the text of the book.

Additionally, this example demonstrates one way to extend the `Manual` genre with new features. It
includes a separate pass for extracting specially-indicated code blocks to their own files, as a
part of building the book. This can be used to create a downloadable archive of the book's example
code, without requiring readers to install or use Verso. This feature is implemented by wrapping the
Lean code block that ships with Verso, so blocks that are to be extracted are indicated as such.
Then, a custom build pass traverses the document, finding all the indicated examples and writing
them to files.

# Web

## Blog

The blog example is a personal website that uses Lean code in blog posts. It demonstrates how to
configure and extend the blog genre, including how to implement a custom theme to control the HTML
generation, a custom HTML component that generates an animated greeter on the front page, and
automatic breadcrumbs.

