envvar 1.0.4
==============

[![PGXN version](https://badge.fury.io/pg/envvar.svg)](https://badge.fury.io/pg/envvar)
[![Build Status](https://github.com/theory/pg-envvar/workflows/CI/badge.svg)](https://github.com/theory/pg-envvar/actions)

This library contains a single PostgreSQL extension, `envvar`, which
provides a function, `get_env(TEXT)`, that returns the value of an environment
variable set on the database server

    % SELECT get_env();
     get_env 
    ---------
     UTC

To build envvar, just do this:

    make
    make installcheck
    make install

If you encounter an error such as:

    "Makefile", line 8: Need an operator

You need to use GNU make, which may well be installed on your system as
`gmake`:

    gmake
    gmake install
    gmake installcheck

If you encounter an error such as:

    make: pg_config: Command not found

Be sure that you have `pg_config` installed and in your path. If you used a
package management system such as RPM to install PostgreSQL, be sure that the
`-devel` package is also installed. If necessary tell the build process where
to find it:

    env PG_CONFIG=/path/to/pg_config make && make installcheck && make install

If you encounter an error such as:

    ERROR:  must be owner of database regression

You need to run the test suite using a super user, such as the default
"postgres" super user:

    make installcheck PGUSER=postgres

Once envvar is installed, you can add it to a database by connecting to a
database as a super user and running:

    CREATE EXTENSION envvar;

If you want to install envvar and all of its supporting objects into a
specific schema, use the `SCHEMA` clause to specify the schema, like so:

    CREATE SCHEMA env;
    CREATE EXTENSION envvar SCHEMA env;

Dependencies
-----------

The `envvar` extension requires PostgreSQL 9.1 or higher and the C standard
library, `<stdlib.h>`.

Copyright and License
---------------------

Copyright (c) 2014 David E. Wheeler.

This module is free software; you can redistribute it and/or modify it under
the [PostgreSQL License](http://www.opensource.org/licenses/postgresql).

Permission to use, copy, modify, and distribute this software and its
documentation for any purpose, without fee, and without a written agreement is
hereby granted, provided that the above copyright notice and this paragraph
and the following two paragraphs appear in all copies.

In no event shall David E. Wheeler be liable to any party for direct,
indirect, special, incidental, or consequential damages, including lost
profits, arising out of the use of this software and its documentation, even
if David E. Wheeler has been advised of the possibility of such damage.

David E. Wheeler specifically disclaim any warranties, including, but not
limited to, the implied warranties of merchantability and fitness for a
particular purpose. The software provided hereunder is on an "as is" basis,
and David E. Wheeler have no obligations to provide maintenance, support,
updates, enhancements, or modifications.
