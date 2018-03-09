hpqc-new-view(1) -- Creates a named view of defect
==================================================

## SYNOPSIS

hpqc new-view

## DESCRIPTION

`hpqc-new-view` is a tool for creating views for `hpqc-defects(1)`.
It creates a named file that contents a XSLT transformation. It uses
the HPQC local cache (see `hpqc-build-cache(1)`) to check wich attributes has a
defect entity. To create a view only is required to select wich attributes are
wanted.

The generated view is stored in `$HOME/.hpqc/views/`.

## BUGS

At this moment the treatment of some errors is undefined.

## SEE ALSO

hpqc-defects(1), hpqc-build-cache(1)

