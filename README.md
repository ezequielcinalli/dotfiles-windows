# Dotfiles windows

## Winget

winget install Google.Chrome;
winget install Microsoft.VisualStudioCode;
winget install Git.Git;
winget install GitHub.cli;
winget install JanDeDobbeleer.OhMyPosh;
winget install Microsoft.WindowsTerminal;
winget install KeePassXCTeam.KeePassXC;
winget install Docker.DockerDesktop;

winget install Microsoft.VisualStudio.2022.Community;

---

winget uninstall Xbox;
winget uninstall "Microsoft Photos";
winget uninstall "Xbox Game Bar Plugin";
winget uninstall "Xbox Game Bar";
winget uninstall "Xbox Identity Provider";
winget uninstall "Xbox Game Speech Window";
winget uninstall "Your Phone";
winget uninstall "Windows Web Experience Pack";

## Commands for oh-my-posh:

-   New-Item -Path $PROFILE -Type File -Force
-   notepad $PROFILE => (inside file paste) => oh-my-posh init pwsh | Invoke-Expression
-   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

## Windows terminal

-   Add nologo windows terminal https://stackoverflow.com/a/63695674
-   Install 4 fonts MesloLGS from repository (right click -> show more options -> install for all users)
-   Set default font to "MesloLGS NF"
-   Install-Module PSReadLine -Scope CurrentUser -Force
-   Install-Module git-aliases -Scope CurrentUser -AllowClobber

-   Add to $PROFILE file:

```bash
Import-Module PSReadLine
oh-my-posh init pwsh | Invoke-Expression

# Shows navigable menu of all options when hitting Tab
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for Arrow keys
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History
```

## Copy dotfiles

-   .gitconfig
-   .vsvim

## Setup visual studio 2022

-   Import settings file from this repository. Tools -> Import and Export Settings
-   Change terminal font to "MesloLGS NF"
-   Add -nologo to terminal startup, see https://stackoverflow.com/questions/75608065/remove-visual-studio-2022-developer-powershell-header-in-visual-studio-termina

Install extensions:

-   Github copilot
-   CleanBinAndObj
-   Toggle comment 2022
-   Format on Save for VS2022
-   VsVim 2022
-   VsNerdX
