build:
	./mvnw -Dmaven.test.skip=true package
run:
	docker-compose up

clean:
	sudo rm -rf conf.d mysql

cleanall:
	sudo rm -rf conf.d mysql
	./mvnw clean
	docker rm -f mysql petclinic
	docker rmi `docker images | grep petclinic | awk '{print $3}'`
