# OpenSCAD (Flathub)

Repository for flatpak packaging data of the `org.openscad.OpenSCAD` application.

## About OpenSCAD
* [Homepage](https://www.openscad.org/)
* [Tutorial](https://en.wikibooks.org/wiki/OpenSCAD_Tutorial)
* [Manuals](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual)
* [Flathub](https://flathub.org/apps/details/org.openscad.OpenSCAD)

## How to install
```
flatpak install flathub org.openscad.OpenSCAD
```

## How to run
```
flatpak run org.openscad.OpenSCAD
```

## Beta versions
It's possible to install and run the beta builds in parallel using the following
commands:
```
# Setup the flathub-beta repository
flatpak remote-add --user --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo

# Install OpenSCAD beta version
flatpak install --user flathub-beta org.openscad.OpenSCAD

# Set the stable version as default when no branch is specified
flatpak make-current --user org.openscad.OpenSCAD stable

# Run the beta version
flatpak run org.openscad.OpenSCAD//beta
```
This uses the `--user` flag which makes the installed beta application only visible
to the current user.
