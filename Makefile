.PHONY: run stop

run:
	docker build -t hse-soa-marketplace-orders:dev .
	docker run --rm -d --name hse-soa-orders -p 127.0.0.1:8000:8000 hse-soa-marketplace-orders:dev

stop:
	docker stop hse-soa-orders
