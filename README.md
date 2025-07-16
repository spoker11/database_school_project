Tento databázový projekt byl vytvořen jako modelový návrh systému pro správu provozu rodinného zábavního parku. Projekt vznikl na základě textového scénáře zadaného vyučujícím a zahrnuje návrh ER modelu a jeho převod do relační struktury pomocí DDL.

Cílem bylo navrhnout databázi, která umožní:

    evidenci zákazníků a jejich dobrovolné registrace,

    správu čipových karet propojených s účtem zákazníka,

    přehled o atrakcích, jejich kategoriích a provozních parametrech,

    správu zaměstnanců, jejich přístupových práv a vztahu k jednotlivým atrakcím,

    evidenci plateb a transakcí u atrakcí i doplňkových služeb (občerstvení, suvenýry).

Databázový návrh zahrnuje normalizované tabulky s primárními a cizími klíči, vztahy typu 1:N i M:N, a podporuje uchování historických dat (např. přístupová práva v čase). Struktura byla navržena tak, aby bylo možné rozšiřování systému i napojení na další aplikační části (např. webové rozhraní nebo docházkový systém).
