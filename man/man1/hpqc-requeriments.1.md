hpqc-requeriments(1) -- Interacts with HPQC requeriments
========================================================

## SYNOPSIS

`hpqc` `requeriments` [<search>] [<view>]

## DESCRIPTION

`hpqc-requeriments` command interacts with HPQC requeriments entities.

You can use a search in HPQC query format. The HPQC query format has the
following form:

>  property1[selection options]; property2[selection options]; ...

By example:

>  hpqc defects fetch 'id[>1000]; status[new OR fixed]' my\_view
>
>  hpqc defects 'id[>1000]; status[new OR fixed]'

Views are XSLT transformations and can be created with `hpqc-new-view(1)`.

