
class OperatingSystem(object):

    def __init__(self):
        pass

    @staticmethod
    def factory(os_type):
        if os_type == "Ubuntu":
            return Debian()
        elif os_type == "Darwin":
            return Darwin()
        else:
            raise AssertionError("Bad Creation")

class Darwin(OperatingSystem):
    def __init__(self):
        raise RuntimeError("Not Implemented Yet")


class Linux(OperatingSystem):

    def __init__(self):
        print("LINUX!")

    def check_install(self):
        raise RunTimeError("Override")

class Debian(Linux):

    def __init__(self):
        print("Debian")

    def check_install(self):
        pass
