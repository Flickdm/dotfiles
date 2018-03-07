# -*- coding: UTF-8 -*-

import os

from subprocess import check_call, STDOUT, CalledProcessError

class OperatingSystem(object):

    _config = None
    _name = None
    _packages = None
    _symlinks_location = None

    def __init__(self, config):
        self._name = type(self).__name__
        self._config = config
        self._packages = self._config[self._name]["packages"].split(",")
 
    @staticmethod
    def factory(os_type, config):
        if os_type == "Ubuntu":
            return Ubuntu(config)
        elif os_type == "Debian":
            return Debian(config)
        elif os_type == "Darwin":
            return Darwin(config)
        else:
            raise AssertionError("Bad Creation")

class Nix(OperatingSystem):
    
    def __init__(self, config):
            #Call parents init
        super(Nix, self).__init__(config)
        self._symlinks_location = self._config["Nix"]["symlinks"]

    def install(self):
        raise RunTimeError("Override")


class Darwin(Nix):
    def __init__(self):
        raise RuntimeError("Not Implemented Yet")


class Linux(Nix):
    """
    Inherit From Nix
    """
    pass
    
class Debian(Linux):
    """
    Define how to interact with Debian
    """
    def install(self):
        """Attempts to install the packages with apt-get, requires sudo"""
        # TODO make output look better
        for pkg in self._packages:
            try:
                print("Installing \"{}\" ".format(pkg), end="")
                
                check_call(["sudo","apt-get", "install", "-y", pkg],
                    stdout=open(os.devnull, 'wb'), stderr=STDOUT)
                
                print("\t✓")
            except CalledProcessError as e:
                print("\t✗ ")

    def install_symlinks(self):
        print(self._symlinks_location)

class Ubuntu(Debian):
    """
    Inherit from Debian
    """
    pass
