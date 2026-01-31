print('Loading gdscript.lua')

-- paths to check for project.godot file
local paths_to_check = {'/', '/../', '/../../', '/../../../', '/../../../../'}
local is_godot_project = false
local godot_project_path = ''
local cwd = vim.fn.getcwd()

-- iterate over paths and check
for key, value in pairs(paths_to_check) do
		local temp_path = cwd .. value .. 'project.godot'
    if vim.uv.fs_stat(temp_path) then
        is_godot_project = true
        godot_project_path = cwd .. value
				print('Godot project detected at: ' .. godot_project_path)
        break
    end
end

-- check if server is already running in godot project path
local is_server_running = vim.uv.fs_stat('/tmp/nvimserver.pipe')
-- start server, if not already running
if is_godot_project and not is_server_running then
    vim.fn.serverstart('/tmp/nvimserver.pipe')
end
