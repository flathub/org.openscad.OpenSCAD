# OpenSCAD (Flathub)

Repository for flatpak packaging data of the `org.openscad.OpenSCAD` application.

## About OpenSCAD
* [Homepage](https://www.openscad.org/)
* [Tutorial](https://en.wikibooks.org/wiki/OpenSCAD_Tutorial)
* [Manuals](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual)
* [Flathub](https://flathub.org/apps/details/org.openscad.OpenSCAD)

## How to install
```
# Make sure the flathub repo is configured
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install the release version of OpenSCAD
flatpak install flathub org.openscad.OpenSCAD

# Set the just installed stable version as default when no branch is specified
flatpak make-current --user org.openscad.OpenSCAD stable
```

## How to run
```
# Run the default version
flatpak run org.openscad.OpenSCAD

# Force running the stable version
flatpak run org.openscad.OpenSCAD//stable
```

## Network access
Network access is disabled by default. To allow OpenSCAD to access the network, e.g. for using remote
print services, this has to be enabled in the flatpak settings.
```
# Run once with network access
flatpak run --share=network org.openscad.OpenSCAD

# Permanently enable network access
flatpak --user override org.openscad.OpenSCAD --share=network

# Disable network access by default again
flatpak --user override org.openscad.OpenSCAD --unshare=network
```

## Beta versions
It's possible to install and run the beta builds in parallel using the following
commands:
```
# Make sure the main flathub repo is available in user context (needed for the Platform layer)
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Setup the flathub-beta repository
flatpak remote-add --user --if-not-exists flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo

# Install OpenSCAD beta version
flatpak install --user flathub-beta org.openscad.OpenSCAD

# Set the stable version as default when no branch is specified
flatpak make-current --user org.openscad.OpenSCAD stable

# Run the beta version
flatpak run org.openscad.OpenSCAD//beta

# Check for updates
flatpak update --user org.openscad.OpenSCAD
```
This uses the `--user` flag which makes the installed beta application only visible
to the current user.
