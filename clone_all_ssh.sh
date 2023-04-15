#!/bin/bash

mkdir modules && cd modules;

git clone git@github.com:NFeedS/PL-Upstream.git;
git clone git@github.com:NFeedS/PL-Downstream.git;
git clone git@github.com:NFeedS/PL-Subscription.git;

git clone git@github.com:NFeedS/BL-RouterIn.git;
git clone git@github.com:NFeedS/BL-RouterOut.git;
git clone git@github.com:NFeedS/BL-Scheduler.git;

git clone git@github.com:NFeedS/Ad-ContentManager.git;
git clone git@github.com:NFeedS/Ad-EventManager.git;
git clone git@github.com:NFeedS/Ad-UserManager.git;

git clone git@github.com:NFeedS/DL-Auth.git;
git clone git@github.com:NFeedS/DL-Topics.git;
git clone git@github.com:NFeedS/DL-Messages.git;


cd ..;
mv modules ../modules;
