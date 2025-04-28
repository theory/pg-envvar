envvar 1.0.1
============

Synopsis
--------

``` psql
# CREATE EXTENSION envvar;
CREATE EXTENSION

# SELECT get_env('PGTZ');
 get_env 
---------
 UTC
(1 row)
```

Description
-----------

This library contains a single PostgreSQL function, `get_env()`, which returns
the value of the specified environment variable on the PostgreSQL server. The
function uses `getenv()` from `<stdlib.h>` to get the value. Returns `NULL` if
the environment variable is not set. If you need it not to return `NULL`, use
`COALESCE()`:

``` psql
# SELECT COALESCE(get_env('HOME'), '[unknown]');
 coalesce  
-----------
 [unknown]
```

Author
------

[David E. Wheeler](https://justatheory.com/)

Copyright and License
---------------------

Copyright (c) 2024-2025 David E. Wheeler.

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
