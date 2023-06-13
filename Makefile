NAME = ./srcs/docker-compose.yml 
run : 
	mkdir -p ${HOME}/WP ${HOME}/DB
	docker-compose -f ${NAME} up --build 
clean : 
	docker-compose -f ${NAME} down -v --rmi all 
	sudo rm -rf ${HOME}/WP  ${HOME}/DB 
	docker system prune -af

