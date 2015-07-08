# cubeworks.us
Source for http://cubeworks.us

## How to update the website

The makefile should do all the heavy lifting, with the makefile you can:

 * `make develop`: Host a copy of the website on your local machine.
    Visit [localhost:8000](http://localhost:8000) in your browser to view it.
    Any changes you make will automatically cause the site to rebuild,
    simply refresh your browser to see them.
 * `make deploy`: Pushes an update to the live [cubeworks.us](http://cubeworks.us) site.
    It will open an editor window with a summary of the files you changed. You will need
    to write a (breif) message explaining the change, save, and quit.
    Be careful with this, it takes effect immediately.


## Pre-requisites

You'll need to install a few python packages:

`sudo pip install staticjinja when-changed`
