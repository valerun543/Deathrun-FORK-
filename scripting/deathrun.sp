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

Handle dr_active = null;
Handle dr_fixfrags = null;
Handle dr_nofragter = null;
Handle dr_fragct = null;
Handle dr_fragt = null;
Handle dr_fragtimeout = null;
Handle dr_respawn = null;
Handle dr_scouts = null;
Handle dr_scoutster = null;
Handle dr_scoutsystem = null;
Handle dr_autoban = null;
Handle dr_banmessage = null;
Handle dr_bantime = null;
Handle dr_banmessagetimer = null;
Handle dr_antisuicide = null;
Handle dr_norestart = null;
Handle dr_numberofters = null;
Handle dr_secondter = null;
Handle dr_SpamTime = null;
Handle dr_awpmo = null;
Handle dr_blockpickup = null;
Handle dr_forceroundend = null;
Handle dr_spectate = null;
Handle dr_autoforce = null;

Handle RouneEndTimer = null;
Handle Respawn[MAXPLAYERS+1];

int dr_ForceTerrorist = 0;
int _messagetime;

#include "dr/colors.sp"

public plugin myinfo = 
{
    name = "Exclusive Deathrun (FORK)",
    author = "valerun",
    version = DR_VERSION,
    url = "http://forum.online-wars.ru"
};

public void OnPluginStar() 
{
    dr_active = CreateConVar("dr_enable", "1", "[OW] Deathrun Manager Enable or Disable plugins. 1 - ON, 2 - OFF.", true, 0.0, true, 1.0);
    dr_banmessage = CreateConVar("dr_banmessage", "180", "[OW] DR: Time for to ban message in secinds! Max and Default = 180, 0 - OFF", true, 0.0, true, 180.0);

    _messagetime = GetConVarInt(dr_banmessage);
    HookConVarChange(dr_banmessage, ConVarChanged);


}

pybloc void on<apStart()
{
    if (GetConVarBool(dr_active))
    {
        dr_ForceTerrorist = 0;

        if (_messagetime > 0)
        {
            (GetConVarFloat(dr_banmessage), banmsg);
        }
    
     }



}






















