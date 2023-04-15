install := mvnw install -DskipTests
build := mvnw spring-boot:build-image -DskipTests
command := ./$(install) && ./$(build)

all: usermanager contentmanager eventmanager auth messages topics downstream subscription upstream scheduler routerin routerout subscriptions

# adapters
usermanager:
	cd ../modules/Ad-UserManager;$(command);

contentmanager:
	cd ../modules/Ad-ContentManager;$(command);

eventmanager:
	cd ../modules/Ad-EventManager;$(command);

# data layers
auth:
	cd ../modules/DL-Auth;$(command);

messages:
	cd ../modules/DL-Messages;$(command);

subscriptions:
	cd ../modules/DL-Subscriptions;$(command);

topics:
	cd ../modules/DL-Topics;$(command);

# Process layer
downstream:
	cd ../modules/PL-Downstream;$(command);

subscription:
	cd ../modules/PL-Subscription;$(command);

upstream:
	cd ../modules/PL-Upstream;$(command);

# Business logic
scheduler:
	cd ../modules/BL-Scheduler;$(command);

routerin:
	cd ../modules/BL-RouterIn;$(command);

routerout:
	cd ../modules/BL-RouterOut;$(command);
