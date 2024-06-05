CREATE EXTENSION envvar;
SELECT COALESCE(length(get_env('HOME')), 0) >= 0;
SELECT get_env('no such envvar');
SELECT get_env(NULL);
