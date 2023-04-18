install := mvnw install -DskipTests
build := mvnw spring-boot:build-image -DskipTests
command := ./$(install) && ./$(build)

modules_folder := ../modules
Ad_folder := Adapters
DL_folder := DataLayer
PL_folder := ProcessLayer
BL_folder := BusinessLogic

all: usermanager contentmanager eventmanager auth messages topics downstream subscription upstream scheduler routerin routerout subscriptions

# adapters
usermanager:
	cd $(modules_folder)/$(Ad_folder)/Ad-UserManager;$(command);

contentmanager:
	cd $(modules_folder)/$(Ad_folder)/Ad-ContentManager;$(command);

eventmanager:
	cd $(modules_folder)/$(Ad_folder)/Ad-EventManager;$(command);

# data layers
auth:
	cd $(modules_folder)/$(DL_folder)/DL-Auth;$(command);

messages:
	cd $(modules_folder)/$(DL_folder)/DL-Messages;$(command);

subscriptions:
	cd $(modules_folder)/$(DL_folder)/DL-Subscriptions;$(command);

topics:
	cd $(modules_folder)/$(DL_folder)/DL-Topics;$(command);

# Process layer
downstream:
	cd $(modules_folder)/$(PL_folder)/PL-Downstream;$(command);

subscription:
	cd $(modules_folder)/$(PL_folder)/PL-Subscription;$(command);

upstream:
	cd $(modules_folder)/$(PL_folder)/PL-Upstream;$(command);

# Business logic
scheduler:
	cd $(modules_folder)/$(BL_folder)/BL-Scheduler;$(command);

routerin:
	cd $(modules_folder)/$(BL_folder)/BL-RouterIn;$(command);

routerout:
	cd $(modules_folder)/$(BL_folder)/BL-RouterOut;$(command);
