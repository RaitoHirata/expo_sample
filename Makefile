expo_sample:
	./get-local-ip-addr.sh
	docker-compose up -d
	docker-compose exec expo_sample bash --login