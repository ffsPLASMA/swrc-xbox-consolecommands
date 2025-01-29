//=====================================
class CXCI extends MenuVirtualKeyboard;
//=====================================

// CXCI - Custom XBOX Console Interface
// V 1.0
// Used to call a virtual keyboard on screen for text input
// When done, execute string as console command

var PlayerController currentPC;
var string Command;
var string LastEnteredCommand;
var CXPI CustomXboxPlayerInput;

simulated function Init(string Args)
{
	// TODO: figure out why last entered command still doesnt show up on virtual keyboard
    //Command = ParseToken(Args);
	
	//InputText.Text = LastEnteredCommand;
	
    //Super.Init(Args);
	Super.Init("?InputText=" $ LastEnteredCommand);
}

simulated function HandleInputBack()
{
	CloseMenu();
}

simulated function OnDone()
{
	local PlayerController PC;

	if(currentPC != None)
	{
		PC = currentPC;
	}
	else
	{
		PC = Level.GetLocalPlayerController();
	}

	// execute it as console command
	PC.ConsoleCommand(InputText.Text);
	
	//draw input to our hud
	PC.myHUD.AddCriticalMessage(InputText.Text, 3, class'Canvas'.Static.MakeColor(200,200,200));
	
	LastEnteredCommand = InputText.Text;
	
	CloseMenu();
}

//replace the pseudo space _ with a real space...
defaultproperties
{
	LastEnteredCommand = "";
	SpaceChar = " ";
	MaxLength = 50;
}