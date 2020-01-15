function post_install(){
    pearl emerge ${PEARL_PKGREPONAME}/bufexplorer
    pearl emerge ${PEARL_PKGREPONAME}/dict
    pearl emerge ${PEARL_PKGREPONAME}/dot-vim
    pearl emerge ${PEARL_PKGREPONAME}/fugitive
    pearl emerge ${PEARL_PKGREPONAME}/gitgutter
    pearl emerge ${PEARL_PKGREPONAME}/indentline
    pearl emerge ${PEARL_PKGREPONAME}/nerdcommenter
    pearl emerge ${PEARL_PKGREPONAME}/nerdtree
    pearl emerge ${PEARL_PKGREPONAME}/powerline
    # Temporarily disabled:
    #pearl emerge ${PEARL_PKGREPONAME}/python-mode
    pearl emerge ${PEARL_PKGREPONAME}/supertab
    pearl emerge ${PEARL_PKGREPONAME}/syntastic
    pearl emerge ${PEARL_PKGREPONAME}/vim-colors
    pearl emerge ${PEARL_PKGREPONAME}/vim-multiple-cursors
    pearl emerge ${PEARL_PKGREPONAME}/vim-orgmode

    return 0
}

function post_update(){
    post_install

    return 0
}

function pre_remove(){
    if ask "Do you want to remove all vim related packages?" "N"
    then
        pearl remove ${PEARL_PKGREPONAME}/bufexplorer
        pearl remove ${PEARL_PKGREPONAME}/dict
        pearl remove ${PEARL_PKGREPONAME}/dot-vim
        pearl remove ${PEARL_PKGREPONAME}/fugitive
        pearl remove ${PEARL_PKGREPONAME}/gitgutter
        pearl remove ${PEARL_PKGREPONAME}/indentline
        pearl remove ${PEARL_PKGREPONAME}/nerdcommenter
        pearl remove ${PEARL_PKGREPONAME}/nerdtree
        pearl remove ${PEARL_PKGREPONAME}/powerline
        # Temporarily disabled:
        #pearl remove ${PEARL_PKGREPONAME}/python-mode
        pearl remove ${PEARL_PKGREPONAME}/supertab
        pearl remove ${PEARL_PKGREPONAME}/syntastic
        pearl remove ${PEARL_PKGREPONAME}/vim-colors
        pearl remove ${PEARL_PKGREPONAME}/vim-multiple-cursors
        pearl remove ${PEARL_PKGREPONAME}/vim-orgmode
    fi
    return 0
}
