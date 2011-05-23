#include "soup-perl.h"


MODULE = Glib::Soup  PACKAGE = Glib::Soup  PREFIX = soup_


BOOT:
#include "register.xsh"
#include "boot.xsh"

