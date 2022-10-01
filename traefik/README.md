## Some helpful commands
1.  Generates a password for authelia
```bash
docker run authelia/authelia:latest authelia hash-password -- 'password'
Password hash: $argon2id$v=19$m=65536$3oc26byQuSkQqksq$zM1QiTvVPrMfV6BVLs2t4gM+af5IN7euO0VB6+Q8ZFs

```