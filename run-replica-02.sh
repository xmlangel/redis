docker run -d -h redis-replica-02 --name redis-replica-02 --link redis-primary:redis-primary xmlangel/redis-replica
