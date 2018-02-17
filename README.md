# README

## Known Bugs

* Select province change (Solved!)

When a province only has one commune, and one changes the province to show one
that is not associated with any commune, the orginal commune will still show,
even though it is emptied when the province is changed.

This should not happen in production, since every province should be associated
with more than one commune, to begin with, but is not an acceptable behaviour.

Solved by appending empty data to the select control.
