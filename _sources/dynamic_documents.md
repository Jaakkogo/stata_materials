### Using `dyndoc` and `markstat`

Templates for the Stata build in `dyndoc` function and the user written `markstat` package are available on Mycourses in the Materials section. When using either of these functions, you should remember to specify that you want to generate self-contained htlml-files. In other words, you want that the figures are embedded in the html-file (otherwise we won't be able to see them). You should the following commands:

`dyndoc`:

```

dyndoc file_name.txt, embedimage

```

`Markstat`:

```

markstat using file_name.stmd, bundle

```