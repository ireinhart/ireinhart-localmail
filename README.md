localmail
=========

puppet module to set up a local catch all mail system for ubuntu - useful for development vargrant boxes

Usage
=====

Clone this repro in your puppet modules directory

     cd puppet/modules
     git clone https://github.com/ireinhart/localmail.git

and add e.g. in your node definition (puppet/manifests/nodes/default.pp)

     class { 'localmail': }

