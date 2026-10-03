#!/bin/bash
CMD="$1"
shift
ostree "$CMD" --repo _repo app/org.openscad.OpenSCAD/x86_64/test "$@"
