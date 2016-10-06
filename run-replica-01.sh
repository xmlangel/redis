docker run -d -h redis-replica-01 --name redis-replica-01 --link redis-primary:redis-primary xmlangel/redis-replica
