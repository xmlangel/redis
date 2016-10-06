#Redis

## Redis Base Image
### 레디스를 인스톨하는 베이스 이미지
- PPA 에서 받은 이미지 설치
- VOLUME : /var/lib/redis , /var/log/redis
- PORT : 6379

## Redis primary
### 레디스 프라이머리 서버
- ENTRYPOINT : redis-server --logfile /var/log/redis/redis-server.log

## Redis replica 01, 02
### 레디스 복제
- ENTRYPOINT : redis-server --logfile /var/log/redis/redis-replica.log --slaveof redis-primary 6379

## 레디스 로그확인
- 로그는 표준출력이 아닌 파일에 로깅을 한다.

- 프라이머리

docker run -ti --rm --volumes-from redis-primary ubuntu cat /var/log/redis/redis-server.log

- 복제1

docker run -ti --rm --volumes-from redis-replica-01 ubuntu cat /var/log/redis/redis-server.log

- 복제2

docker run -ti --rm --volumes-from redis-replica-01 ubuntu cat /var/log/redis/redis-server.log
