#!/bin/bash

mkdir modules && cd modules;

mkdir ProcessLayer && cd ProcessLayer;
git clone https://github.com/NFeedS/PL-Upstream.git;
git clone https://github.com/NFeedS/PL-Downstream.git;
git clone https://github.com/NFeedS/PL-Subscription.git;
cd ..;

mkdir BusinessLogic && cd BusinessLogic;
git clone https://github.com/NFeedS/BL-RouterIn.git;
git clone https://github.com/NFeedS/BL-RouterOut.git;
git clone https://github.com/NFeedS/BL-Scheduler.git;
cd ..;

mkdir Adapters && cd Adapters;
git clone https://github.com/NFeedS/Ad-EventManager.git;
git clone https://github.com/NFeedS/Ad-ContentManager.git;
git clone https://github.com/NFeedS/Ad-UserManager.git;
cd ..;

mkdir DataLayer && cd DataLayer;
git clone https://github.com/NFeedS/DL-Auth.git;
git clone https://github.com/NFeedS/DL-Topics.git;
git clone https://github.com/NFeedS/DL-Messages.git;
git clone https://github.com/NFeedS/DL-Subscriptions.git
cd ..;

cd ..;
mv modules ../modules;
