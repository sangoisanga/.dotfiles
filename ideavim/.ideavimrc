source ~/.vimrc

Plug 'terryma/vim-multiple-cursors'

set ideastrictmode
set clipboard+=ideaput

set ideamarks
set ideajoin
set idearefactormode=keep
set surround
set ReplaceWithRegister
set exchange

set highlightedyank
let g:highlightedyank_highlight_duration = "1000"

set argtextobj
let g:argtextobj_pairs="[:],(:),<:>,{:},::,"


set NERDTree
let g:NERDTreeMapActivateNode='l'
let g:NERDTreeMapJumpParent='h'

set easymotion
let g:EasyMotion_startofline = 0
"map W <Plug>(easymotion-W)
"sunmap W

nmap gi <Action>(GotoImplementation)
nmap gt <Action>(GotoTypeDeclaration)
nmap gs <Action>(GotoSuperMethod)
nmap gh <Action>(CallHierarchy)
nmap ga <Action>(SearchEverywhere)
nmap gy <Action>(GotoSymbol)
nmap gf <Action>(GotoFile)

imap <C-j> <Action>(copilot.cycleNextInlays)
imap <C-k> <Action>(copilot.cyclePrevInlays)

map [[ <Action>(MethodUp)
map ]] <Action>(MethodDown)
nmap ]c <Action>(VcsShowNextChangeMarker)
nmap [c <Action>(VcsShowPrevChangeMarker)

map w [w
map e ]w
map b [b

map <leader>r <Action>(RenameElement)
map <leader>o <Action>(FileStructurePopup)
map <leader>e <Action>(SelectInProjectView)
map <leader>z <Action>(ToggleDistractionFreeMode)
map <leader>m <Action>(ExtractMethod)
map <leader>a <Action>(ShowIntentionActions)

map <leader>gu <Action>(Vcs.UpdateProject)
map <leader>gh <Action>(Vcs.ShowHistoryForBlock)
map <leader>gb <Action>(Git.Branches)
map <leader>ga <Action>(Annotate)
map <leader>gl <Action>(Vcs.Show.Log)
map <leader>gn <Action>(GitNewBranchAction)
map <leader>gk <Action>(CheckinProject)

map <leader>pm <Action>(MergeAllWindowsAction)
map <leader>pp <Action>(OpenProjectWindows)
map <leader>pr <Action>($LRU)

map > <Action>(EditorIndentSelection)
map < <Action>(EditorUnindentSelection)

map <leader>dd <Action>(RunClass)
map <leader>db <Action>(DebugClass)
map <leader>dr <Action>(Rerun)
map <leader>ds <Action>(ToggleLineBreakpoint)

vmap sf <Action>(ReformatCode)

" moving
nmap <s-j> <Action>(PreviousTab)
nmap <s-k> <Action>(NextTab)
map <s-Space> <Action>(GotoNextError)

map <c-\> <Action>(MoveTabRight)
map <c-]> <Action>(MoveEditorToOppositeTabGroup)
map <c--> <Action>(SplitHorizontally)
map <c-=> <Action>(UnsplitAll)

nmap <c-x> <Action>(HideAllWindows)
map <c-w>m <Action>(MaximizeEditorInSplit)

map <c-o> <Action>(Back)
map <c-i> <Action>(Forward)

" multiple cursors
map <C-n> <A-n>
map <C-p> <A-p>

map <leader>f <Plug>(easymotion-s)
map <leader>i <Action>(AceDeclarationAction)

nmap == <Action>(ReformatCode)

nnoremap <Esc> <Esc>:noh<CR>
