#!/usr/bin/env python3

import sys
import subprocess
import platform

import configparser

from OS.OSFactory import OperatingSystem


def determine_os():
    system_type = platform.system()

    if system_type == "Linux":
        OS = platform.linux_distribution()[0]
    else:
        #Todo add support for other types
        OS = "Not Determinied"

    return OS

def parse_config(config_path="./packages.ini"):
    config = configparser.ConfigParser()
    config.read(config_path)


    debian_packages = config["debian"]["packages"]

    print(debian_packages)


def main(argv):

    parse_config()
    #OS = OperatingSystem.factory(determine_os())

if __name__ == "__main__":
    main(sys.argv[1:])
