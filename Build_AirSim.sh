#!/bin/bash
echo "DOWNLOAD UNREAL ENGINE 4.27"
echo ""
git clone -b 4.27 git@github.com:EpicGames/UnrealEngine.git
cd UnrealEngine
./Setup.sh
./GenerateProjectFiles.sh
echo "BUILDING UNREAL ENGINE 4.27"
echo ""
make

echo ""
echo ""

echo "DOWNLOAD AIRSIM"
echo ""
cd ..
git clone https://github.com/Microsoft/AirSim.git
cd AirSim
echo "BUILDING AIRSIM"
./setup.sh
./build.sh

echo ""
echo "Finish"
