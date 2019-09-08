DEPENDS=("${PEARL_PKGREPONAME}/bufexplorer" "${PEARL_PKGREPONAME}/dict" "${PEARL_PKGREPONAME}/dot-vim" "${PEARL_PKGREPONAME}/fugitive" "${PEARL_PKGREPONAME}/gitgutter" "${PEARL_PKGREPONAME}/indentline" "${PEARL_PKGREPONAME}/nerdcommenter" "${PEARL_PKGREPONAME}/nerdtree" "${PEARL_PKGREPONAME}/powerline" "${PEARL_PKGREPONAME}/supertab" "${PEARL_PKGREPONAME}/syntastic" "${PEARL_PKGREPONAME}/vim-colors" "${PEARL_PKGREPONAME}/vim-multiple-cursors" "${PEARL_PKGREPONAME}/vim-orgmode")

function post_install(){
    # Temporarily disabled:
    #pearl emerge ${PEARL_PKGREPONAME}/python-mode

    return 0
}

function post_update(){
    post_install

    return 0
}

function pre_remove(){
    if ask "Do you want to remove all vim related packages?" "N"
    then
        for dep in ${DEPENDS[@]}
        do
            pearl remove ${dep}
        done
    fi
    return 0
}
