***Settings***
Library    SeleniumLibrary

***Variables***
${url}          http://automationpractice.com/index.php
&{Home}         campo_de_busca=css:#search_query_top
...             icone_de_busca=//input[@id="search_query_top"]/following-sibling::button[@type='submit']
&{produtos}     itemnaoexistente=//a[@title="itemNãoExistente"]
***Keywords***
Acessar a página home do site Automation Practice
    [Documentation]     Keyword do site que vamos automatizar
    Go To   ${url}


Digitar o nome do produto "${produto}" no campo de pesquisa
    Wait Until Element Is Visible      ${Home.campo_de_busca}
    Input Text                         ${Home.campo_de_busca}   ${produto}

Clicar no botão pesquisar
    Wait Until Element Is Visible       ${Home.icone_de_busca}
    Click Element                       ${Home.icone_de_busca}

Conferir mensagem No results were found for your search "itemNãoExistente"
    Wait Until Element Is Visible       ${produtos.itemnaoexistente}


abrir navegador chrome
    Open Browser  browser=chrome

fechar navegador
    Close Browser