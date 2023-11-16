#!/bin/bash
if [ ! -d "/home/coder/project/workspace/dotnetapp/" ]
then
    cp -r /home/coder/project/workspace/nunit/dotnetapp /home/coder/project/workspace/;
fi

if [ -d "/home/coder/project/workspace/dotnetapp/" ]
then
    echo "project folder present"
    # checking for src folder
    if [ -d "/home/coder/project/workspace/dotnetapp/" ]
    then
        cp -r /home/coder/project/workspace/nunit/test/TestProject /home/coder/project/workspace/;
    cd /home/coder/project/workspace/TestProject || exit;
     dotnet clean;    
     dotnet build && dotnet test -l "console;verbosity=normal";
    else
        echo "Week2_Day1_Player_Properties_Age_ReturnExpectedDataTypes_Int FAILED";
        echo "Week2_Day1_Player_Properties_Id_ReturnExpectedDataTypes_int FAILED";
	    echo "Week2_Day1_Player_Properties_Name_ReturnExpectedDataTypes_String FAILED";
        echo "Week2_Day2_Player_Properties_BiddingPrice_ReturnExpectedDataTypes_Decimal FAILED";
        echo "Week2_Day2_PlayerManager_Should_have_AddPlayer FAILED";
        echo "Week2_Day3_PlayerManager_Should_Have_DeletePlayer_Method FAILED";
        echo "Week2_Day4_PlayerManager_Should_have_AddPlayerToDatabase FAILED";
    fi
else   
    echo "Week2_Day1_Player_Properties_Age_ReturnExpectedDataTypes_Int FAILED";
    echo "Week2_Day1_Player_Properties_Id_ReturnExpectedDataTypes_int FAILED";
	echo "Week2_Day1_Player_Properties_Name_ReturnExpectedDataTypes_String FAILED";
    echo "Week2_Day2_Player_Properties_BiddingPrice_ReturnExpectedDataTypes_Decimal FAILED";
    echo "Week2_Day2_PlayerManager_Should_have_AddPlayer FAILED";
    echo "Week2_Day3_PlayerManager_Should_Have_DeletePlayer_Method FAILED";
    echo "Week2_Day4_PlayerManager_Should_have_AddPlayerToDatabase FAILED";
fi
