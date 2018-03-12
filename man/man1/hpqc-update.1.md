hpqc-update(1) -- Updated HPQC entities
=======================================

## SYNOPSIS

`hpqc` `update` <entity> <id> <entity-data>

## DESCRIPTION

`hpqc-update` modifies the content of an entity identified by it id. The entity
type <entity> can be obtained from `$HOME/.hpqc/cache/entities.csv`. The value
for the functionallity should be in plural.

The <entity-data> is a XML in the format required by HPQC.

This tool use `hpqc-lock`(1) to work and it's primary service is to help other
tools to simplify the work of modify entities.

## EXAMPLES

hpqc update defects 25211 '<Entity Type="defect"><Fields><Field Name="user-03"><Value>Some value</Value></Field></Fields></Entity>'

## SEE ALSO

hpqc-lock(1)
