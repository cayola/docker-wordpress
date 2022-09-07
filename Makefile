default:
	sudo chown $(USER):$(USER) -R wordpress/ && sudo chmod -R 775 wordpress/
	sudo chown $(USER):$(USER) -R wp-content/ && sudo chmod -R 775 wp-content/

.PHONY: wordpress
wordpress:
	docker-compose up wordpress

.PHONY: phpmyadmin
phpmyadmin:
	docker-compose up phpmyadmin --no-deps