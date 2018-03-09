hpqc-new-search(1) -- Creates a named search of defects
=======================================================

## SYNOPSIS

hpqc new-search

## DESCRIPTION

`hpqc-new-search` is a tool for creating search facility for `hpqc-defects(1)`.
It creates a named file that contents the search in HPQC query format. It uses
the HPQC local cache (see `hpqc-build-cache(1)`) to check wich attributes has a
defect entity. The search definition is a two steps process:

  1. It shows the attributes to use.
  2. For each attribute you have to put the value you want. This values can use
     boolean logic (using OR, AND and NOT), can use relation logic (>, <, >= and <=).
     If the attribute is a string, it is possible to use patter matchig ("*value"):

     status[New]; date[<'2018-03-03']; user-03[Nuevo OR Reabierto];

     Each criteria is separated by ';'.

The generated search is stored in `$HOME/.hpqc/searchs/`.

## BUGS

At this moment the treatment of some errors is undefined.

## SEE ALSO

hpqc-defects(1), hpqc-build-cache(1)
