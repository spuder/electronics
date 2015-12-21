Ultimate Hacking Keyboard electronics
=====================================

[![Changelog #186](https://img.shields.io/badge/changelog-%23186-lightgrey.svg)](https://changelog.com/186)

Contained are the schematics and board layout KiCad files for the Ultimate Hacking Keyboard.

![](https://www.crowdsupply.com/img/e94f/addon-modules-2-white-1_png_project-body.jpg)


## Installation


Install KiCad from [kicad-pdb.org](http://kicad-pcb.org/)

Install KiCad [extras](http://kicad-pcb.org/download/)

Then install the following two libraries

- [ugl-kicad-libs](https://code.google.com/p/opendous/downloads/detail?name=KiCad_Libraries-2012-10-18.zip&can=2&q=)

- [Opendous](https://code.google.com/p/opendous/downloads/detail?name=KiCad_Libraries-2012-10-18.zip&can=2&q=)

### ugl-kicad-libs installation

Either download the zip, or clone the git repository

    git clone https://github.com/UltimateHackingKeyboard/ugl-kicad-libs

Then inside kicad go to "component Libraries"

![](http://cl.ly/0N3o1H0f0004/Screen%20Shot%202015-12-12%20at%209.17.23%20PM%20(1).png)

And add a relative or absolute path to the library directory


![](http://cl.ly/370E262O052g/kicad.png)


## Opendous installation

The opendous download has two folders

- library
- modules

Copy the contents of the library folder to the kicad library directory.

On OS X, the library path is `/Library/Application\ Support/kicad/library/`

Copy the contents of the modules folder to a **new folder** in the kicad module directory

On OS X, the module path is `/Library/Application\ Support/kicad/modules/opendous`

## Visualizing Changes

Before contributing any changes, please run the `generate-png-diff.sh` script. This will create a directory named `plots` containing .png rendering of the pcb 'before' and 'after' the change. 

```bash
# Assuming you are on a linux system (Kicad on OSX/Windows doesn't support python api)
./scripts/generate-png-diff.sh
```

The script takes one or two git references to compare against. Arguments can be short/long git references, branches, or tags. Providing no argument is the same as running `generate-png-diff.sh $(git rev-parse --short HEAD)`

e.g  

`./scripts/generate-png-diff.sh 123456`

`./scripts/generate-png-diff.sh 67890 12345`

`./scripts/generate-png-diff.sh master`

`./scripts/generate-png-diff.sh $(git rev-parse HEAD^1)`

For those who are running OSX / Windows, a Vagrantfile is provided to create an ubuntu 14.04 VM with a shared directory of `/vagrant` 

- Install [Vagrant](https://www.vagrantup.com/)
- Install Virtualbox or VMWare Player

```bash
vagrant up
vagrant ssh

cd /vagrant
./scripts/1-add-repos.sh
./scripts/2-install-dependencies.sh
```




## Known issues

OSX Users may get a warning that the 'special' library is missing. This is most likely a harmless error.

![](http://cl.ly/2S0J3y2D3x3A/Screen%20Shot%202015-12-12%20at%207.48.11%20PM.png)