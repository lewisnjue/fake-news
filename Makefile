

.PHONY: up 

up:
	@echo "BRINING UP THE SERVICES"
	docker compose up 

.PHONY:upb

upb:
	@echo "BRINING UP THE SERVICES AND BUILDING"
	docker  compose up --build 

.PHONY:down

down:
	@echo "BRINING DOWN THE SERVICES"
	docker compose down 