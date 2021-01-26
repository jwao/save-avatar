function saiuDoServidor()
    local playeracc = getPlayerAccount(source)
    if (playeracc) then 
        local playerAvatar = getElementData(source, "conta:avatar") or 0
        setAccountData(playeracc, "data.avatar", playerAvatar)
        outputConsole('O avatar do jogador foi salvo') else 
        outputConsole('Algo deu errado!')
    end
end
addEventHandler("onPlayerQuit", getRootElement(), saiuDoServidor)


function entrouNoServidor()
    local playeracc = getPlayerAccount(source)
    if (playeracc) then 
        local playerAvatar = getAccountData(playeracc, "data.avatar")
        if (playerAvatar) then 
            setElementData(source, "conta:avatar", playerAvatar)
            outputDebugString('Foi carregado!') else 
            outputDebugString('Algo deu errado!')
        end
    end
end
addEventHandler("onPlayerLogin", getRootElement(), entrouNoServidor)