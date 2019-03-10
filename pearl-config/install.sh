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
    pearl emerge ${PEARL_PKGREPONAME}/python-mode
    pearl emerge ${PEARL_PKGREPONAME}/supertab
    pearl emerge ${PEARL_PKGREPONAME}/syntastic

    local theme=$(choose "Do you want to remove all vim related packages?" "None" "solarized" "zenburn")
    if [[ $theme != "None" ]]
    then
        pearl emerge ${PEARL_PKGREPONAME}/$theme
    fi

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
        pearl remove ${PEARL_PKGREPONAME}/python-mode
        pearl remove ${PEARL_PKGREPONAME}/supertab
        pearl remove ${PEARL_PKGREPONAME}/syntastic
    fi
    return 0
}
