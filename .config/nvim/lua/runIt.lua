
local NAME = "runIt.lua"
local M = {}
function runPythonFile(filePath,readPCommand,percentageOfWindow)
    local runPythonFileCommand = ":silent !tmux splitw -v -p "..percentageOfWindow.." 'python3 "..filePath.." && "..readPCommand.." || "..readPCommand.."'"
    local clearPanesCommand = ":silent !tmux kill-pane -a "
    vim.cmd(clearPanesCommand)
    vim.cmd(runPythonFileCommand)
end

function runCFile(fileNameNoExtension,filePath,directoryPath,percentageOfWindow,readPCommand)
    local clearPanesCommand = ":silent !tmux kill-pane -a "
    local saveComplileFileDirectory = "~/out_files/"
    local nevigateToFolder = "cd "..directoryPath..""
    local gccRunCompileCommand = "gcc -Wall -Wextra -Werror -g -std=c99 "..filePath.." -o "..saveComplileFileDirectory..fileNameNoExtension..".out "
    -- add valgring to run while checking leaks like that: "valgrind "..saveComplileFileDirectory......
    local runExe = "valgrind --leak-check=full "..saveComplileFileDirectory..fileNameNoExtension..".out "
    local cFileRunCommand = ":silent !tmux splitw -v -p "..percentageOfWindow.." '"..nevigateToFolder.." && "..gccRunCompileCommand.." && "..runExe.." && "..readPCommand.." || "..readPCommand.."'"
    local compileResult = vim.fn.system(gccRunCompileCommand)
    if (compileResult == "") then
        vim.cmd(clearPanesCommand)
        vim.cmd(cFileRunCommand)
    else
        vim.cmd(clearPanesCommand)
        os.execute("tmux splitw -v -p  "..percentageOfWindow.." '"..nevigateToFolder.." && "..gccRunCompileCommand.." | cat && "..readPCommand.."'")
    end
end

function M.runFile()
    local fileName = vim.fn.expand('%:t')
    local fileNameNoExtension = fileName:match("(.*)%.")
    local fileExtension= fileName:match("^.+(%..+)$")
    local filePath = vim.fn.expand('%:p')
    local directoryPath = vim.fn.expand('%:p:h') -- p stands for 'path' and h stands for 'head'(of file, which is the directory)
    local percentageOfWindow = 34
    local readPCommand = "read -p''Press_enter_to_close_window''"

    if (fileExtension == '.c') then
        runCFile(fileNameNoExtension,filePath,directoryPath,percentageOfWindow,readPCommand)
    elseif (fileExtension == '.py') then
        runPythonFile(fileName,readPCommand,percentageOfWindow)
    else
        print("Cannot build that type of file")
    end

end

return M

