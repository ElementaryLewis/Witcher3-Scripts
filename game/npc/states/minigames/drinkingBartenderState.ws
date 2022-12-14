/***********************************************************************/
/** 	© 2015 CD PROJEKT S.A. All rights reserved.
/** 	THE WITCHER® is a trademark of CD PROJEKT S. A.
/** 	The Witcher game is based on the prose of Andrzej Sapkowski.
/***********************************************************************/




state DrinkingBartender in CNewNPC
{
	event OnEnterState( prevStateName : name )
	{
		parent.DisableLookAt();
		DrinkingBartenderStateInit();		
	}
	
	entry function DrinkingBartenderStateInit()
	{
		parent.ActivateAndSyncBehavior('npc_drinking_minigame_bartender');
	}
}