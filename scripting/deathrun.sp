#pragma semicolon 1

#include <sourcemod>
#include <sdktools>
#include <sdkhooks>
#include <cstrike>

#indef REQUIRE_PLUGIN
#include <sourcebans>
#include <adminmenu>


#define CS_TEAM_NONE		0
#define CS_TEAM_SPECTATOR   1
#define CS_TEAM_T           2
#define CS_TEAM_CT          3

#define DR_VERSION   "1.0"

#pragma newdecls required

#include "dr/colors.sp"

public plugin myinfo = 
{
    name = "Exclusive Deathrun (FORK)",
    author = "valerun",
    version = DR_VERSION,
    url = "http://forum.online-wars.ru"
};
























