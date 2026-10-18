# Sitemap do Sistema

## Opção 1: Fluxograma (Mermaid)

```mermaid
graph TD
    %% Nós (Páginas)
    Index(index.html)
    Login(login.html)
    Main(main.html)
    CadPesq(cadpesq.html)
    Pesquisa(pesquisa.html)

    %% Conexões
    Index <--> Login
    Index --> Main
    Index <--> CadPesq
    Login --> Main
    CadPesq --> Main
    Main --> Pesquisa