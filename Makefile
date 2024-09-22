# Makefile for Laravel Sail

# Default command to start Sail
up:
	./vendor/bin/sail up -d

# Command to stop Sail
down:
	./vendor/bin/sail down

# Command to build/rebuild Sail containers
build:
	./vendor/bin/sail build --no-cache

# Command to stop Sail containers without removing them
stop:
	./vendor/bin/sail stop

# Command to restart Sail containers
restart:
	./vendor/bin/sail restart

# Command to execute Artisan commands
artisan:
	./vendor/bin/sail artisan $(cmd)

# Command to run Composer commands
composer:
	./vendor/bin/sail composer $(cmd)

# Command to run NPM commands
npm:
	./vendor/bin/sail npm $(cmd)
	# Makefile for Laravel Sail

# Command to run Package commands
larastan:
	./vendor/bin/phpstan analyse

# Command to run Pint commands
pint:
	./vendor/bin/pint --config ./pint.json

test:
	./vendor/bin/sail artisan test

dusk:
	./vendor/bin/sail dusk
