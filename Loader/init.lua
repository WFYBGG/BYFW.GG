local Tool = script.Parent;

-- Load tool completely before proceeding
local Indicator = Tool:WaitForChild 'Loaded';
while not Indicator.Value do
	Indicator.Changed:Wait();
end;

-- Initialize the core
local Core = require(Tool:WaitForChild 'Core');

-- Get core tools
local CoreTools = Tool:WaitForChild 'Tools';

-- Initialize move tool
local MoveTool = require(CoreTools:WaitForChild 'Move');
Core.AssignHotkey('Z', Core.Support.Call(Core.EquipTool, MoveTool));
Core.AddToolButton(Core.Assets.MoveIcon, 'Z', MoveTool)

-- Initialize rotate tool
local RotateTool = require(CoreTools:WaitForChild 'Rotate')
Core.AssignHotkey('C', Core.Support.Call(Core.EquipTool, RotateTool));
Core.AddToolButton(Core.Assets.RotateIcon, 'C', RotateTool)

-- Initialize new part tool
local NewPartTool = require(CoreTools:WaitForChild 'NewPart')
Core.AssignHotkey('J', Core.Support.Call(Core.EquipTool, NewPartTool));
Core.AddToolButton(Core.Assets.NewPartIcon, 'J', NewPartTool)

return Core
