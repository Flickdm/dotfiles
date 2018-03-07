#!/usr/bin/env python3
# -*- coding: UTF-8 -*-

import sys
import subprocess
import platform
import collections as col
import configparser

from OSFactory import OperatingSystem


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

    required_sections = [
        "Debian", "Ubuntu", "Darwin", "Nix", "All"
        ]

    if col.Counter(required_sections) != col.Counter(config.sections()):
        print("Config missing Sections")
        print("Config Must Contain: {}".format(required_sections))
        sys.exit(1)

    return config


def main(argv):

    config = parse_config()
    OS = OperatingSystem.factory(determine_os(), config)
    OS.install()
    OS.install_symlinks()

if __name__ == "__main__":
    main(sys.argv[1:])
