include .env
serve: 
	fresh 
dev:
	go run main.go

migrateUp:
	migrate -path ./migration -database mysql://${DB_USER}:${DB_PASS}@/${DB_NAME} up

migrateDown:
	migrate -path ./migration -database mysql://${DB_USER}:${DB_PASS}@/${DB_NAME} down

.PHONY: fresh dev migrateUp migrateDown