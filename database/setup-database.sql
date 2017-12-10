DO
$body$
BEGIN
  IF NOT EXISTS (
      SELECT 1
      FROM   pg_catalog.pg_roles
      WHERE  rolname = 'rubymine') THEN

    CREATE USER rubymine with superuser login password 'password';
  END IF;
END
$body$;
