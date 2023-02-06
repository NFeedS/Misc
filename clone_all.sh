#!/bin/bash

mkdir modules && cd modules;
git clone https://github.com/NFeedS/PL-Upstream.git;
git clone https://github.com/NFeedS/PL-Downstream.git;
git clone https://github.com/NFeedS/PL-Subscription.git;
git clone https://github.com/NFeedS/BL-RouterIn.git;
git clone https://github.com/NFeedS/BL-RouterOut.git;
git clone https://github.com/NFeedS/Ad-Subscribers.git;
git clone https://github.com/NFeedS/DL-Auth.git;
git clone https://github.com/NFeedS/DL-Topics.git;
git clone https://github.com/NFeedS/DL-Messages.git;

cd ..;
mv modules ../modules;
