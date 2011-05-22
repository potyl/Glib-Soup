#include "soup-perl.h"


MODULE = Gtk2::Soup  PACKAGE = Gtk2::Soup  PREFIX = soup_


BOOT:
#include "register.xsh"
#include "boot.xsh"


guint 
MAJOR_VERSION ()
	CODE:
		RETVAL = SOUP_MAJOR_VERSION;
	
	OUTPUT:
		RETVAL


guint 
MINOR_VERSION ()
	CODE:
		RETVAL = SOUP_MINOR_VERSION;
	
	OUTPUT:
		RETVAL


guint 
MICRO_VERSION ()
	CODE:
		RETVAL = SOUP_MICRO_VERSION;
	
	OUTPUT:
		RETVAL


void
GET_VERSION_INFO (class)
	PPCODE:
		EXTEND (SP, 3);
		PUSHs (sv_2mortal (newSViv (SOUP_MAJOR_VERSION)));
		PUSHs (sv_2mortal (newSViv (SOUP_MINOR_VERSION)));
		PUSHs (sv_2mortal (newSViv (SOUP_MICRO_VERSION)));
		PERL_UNUSED_VAR (ax);


gboolean
CHECK_VERSION (class, int major, int minor, int micro)
	CODE:
		RETVAL = SOUP_CHECK_VERSION (major, minor, micro);

	OUTPUT:
		RETVAL
