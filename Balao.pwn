
#define FILTERSCRIPT

#include <a_samp>
#include <sscanf2>
#include <streamer>
#include <Pawn.CMD>

new Balao[4];

new bool:BalaoDisponivel[4];
new bool:BaloesLiberados;

public OnFilterScriptInit()
{
    for(new i; i < 4; i++)
    {
        BalaoDisponivel[i] = true;
    }
    BaloesLiberados = true;

    CreateDynamicPickup(1239, 1, 1865.935302, -2243.889404, 13.546875); // balao pickup
    CreateDynamicPickup(1239, 1, 1865.750610, -2268.983398, 13.546875); // balao pickup
    CreateDynamicPickup(1239, 1, 1865.161621, -2293.977294, 13.546875); // balao pickup
    CreateDynamicPickup(1239, 1, 1864.572631, -2318.971191, 13.546875); // balao pickup

    CreateDynamic3DTextLabel("[Andar de Balao]\nDigite /Balao para Andar", -1, 1865.935302, -2243.889404, 13.546875, 3.0); // balao pickup
    CreateDynamic3DTextLabel("[Andar de Balao]\nDigite /Balao para Andar", -1, 1865.750610, -2268.983398, 13.546875, 3.0); // balao pickup
    CreateDynamic3DTextLabel("[Andar de Balao]\nDigite /Balao para Andar", -1, 1865.161621, -2293.977294, 13.546875, 3.0); // balao pickup
    CreateDynamic3DTextLabel("[Andar de Balao]\nDigite /Balao para Andar", -1, 1864.572631, -2318.971191, 13.546875, 3.0); // balao pickup

    // Baloes
    Balao[0] = CreateDynamicObject(19332, 1862.869384, -2243.961669, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    Balao[1] = CreateDynamicObject(19333, 1862.869384, -2268.961669, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    Balao[2] = CreateDynamicObject(19334, 1862.869384, -2293.961669, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    Balao[3] = CreateDynamicObject(19335, 1862.869384, -2318.961669, 12.546875, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 

    // Mapa em Volta
    CreateDynamicObject(1412, 1852.796386, -2230.670410, 13.846876, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1857.996582, -2230.670410, 13.846876, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1863.196533, -2230.670410, 13.846876, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1868.396484, -2230.670410, 13.846876, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1852.796386, -2330.670410, 13.846876, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1857.996582, -2330.670410, 13.846876, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1863.196533, -2330.670410, 13.846876, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1868.396484, -2330.670410, 13.846876, 0.000000, 0.000000, 0.000000, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2328.070312, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2322.870117, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2317.670166, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2312.470214, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2307.270263, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2302.070068, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2296.870117, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2291.670166, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2248.870361, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2243.670166, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2238.470214, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2233.270263, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2269.570312, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2264.370117, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2259.170166, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    CreateDynamicObject(1412, 1870.996337, -2253.970214, 13.846876, 0.000000, 0.000007, 89.999969, -1, -1, -1, 300.00, 300.00); 
    return 1;
}

public OnFilterScriptExit()
{
    return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
    // Map Remoção Pos
    RemoveBuildingForPlayer(playerid, 5006, 1874.209, -2286.530, 17.929, 0.250);
    RemoveBuildingForPlayer(playerid, 5011, 1874.209, -2286.530, 17.929, 0.250);
    return 1;
}

CMD:balao(playerid)
{
    if(IsPlayerInRangeOfPoint(playerid, 3.0, 1865.935302, -2243.889404, 13.546875))
    {
        if(BalaoDisponivel[0] == true)
        {
            if(BaloesLiberados == true)
            {
                BaloesLiberados = false;

                new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;

                BalaoDisponivel[0] = false;
                SetPlayerPos(playerid, 1862.726562, -2243.749267, 13.693072);
                SendClientMessage(playerid, -1, "Atencao: Tome muito cuidado para nao cair e se machucar.");

                GetDynamicObjectPos(Balao[0], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
                MoveDynamicObject(Balao[0], BalaoPosX, BalaoPosY, BalaoPosZ+100, 3.0, 0.0, 0.0, 0.0);
                SetTimer("Balao01Timer01", 1000, false);
                return 1;
            }
            return SendClientMessage(playerid, -1, "ERRO: Um balao ja esta subindo aguarde ele terminar de subir.");
        }
        return SendClientMessage(playerid, -1, "ERRO: Este balao ja esta sendo usado por outro jogador aguarde.");
    }
    else if(IsPlayerInRangeOfPoint(playerid, 3.0, 1865.750610, -2268.983398, 13.546875))
    {
        if(BalaoDisponivel[1] == true)
        {
            if(BaloesLiberados == true)
            {
                BaloesLiberados = false;
                
                new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;

                BalaoDisponivel[1] = false;
                SetPlayerPos(playerid, 1862.862670, -2268.983154, 13.693072);
                SendClientMessage(playerid, -1, "Atencao: Tome muito cuidado para nao cair e se machucar.");

                GetDynamicObjectPos(Balao[1], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
                MoveDynamicObject(Balao[1], BalaoPosX, BalaoPosY, BalaoPosZ+100, 3.0, 0.0, 0.0, 0.0);
                SetTimer("Balao02Timer01", 1000, false);
                return 1;
            }
            return SendClientMessage(playerid, -1, "ERRO: Um balao ja esta subindo aguarde ele terminar de subir.");
        }
        return SendClientMessage(playerid, -1, "ERRO: Este balao ja esta sendo usado por outro jogador aguarde.");
    }
    else if(IsPlayerInRangeOfPoint(playerid, 3.0, 1865.161621, -2293.977294, 13.546875))
    {
        if(BalaoDisponivel[2] == true)
        {
            if(BaloesLiberados == true)
            {
                BaloesLiberados = false;
                
                new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;

                BalaoDisponivel[2] = false;
                SetPlayerPos(playerid, 1862.885986, -2294.035400, 13.693072);
                SendClientMessage(playerid, -1, "Atencao: Tome muito cuidado para nao cair e se machucar.");

                GetDynamicObjectPos(Balao[2], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
                MoveDynamicObject(Balao[2], BalaoPosX, BalaoPosY, BalaoPosZ+100, 3.0, 0.0, 0.0, 0.0);
                SetTimer("Balao03Timer01", 1000, false);
                return 1;
            }
            return SendClientMessage(playerid, -1, "ERRO: Um balao ja esta subindo aguarde ele terminar de subir.");
        }
        return SendClientMessage(playerid, -1, "ERRO: Este balao ja esta sendo usado por outro jogador aguarde.");
    }
    else if(IsPlayerInRangeOfPoint(playerid, 3.0, 1864.572631, -2318.971191, 13.546875))
    {
        if(BalaoDisponivel[3] == true)
        {
            if(BaloesLiberados == true)
            {
                BaloesLiberados = false;
                
                new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;

                BalaoDisponivel[3] = false;
                SetPlayerPos(playerid, 1863.047363, -2319.104736, 13.693072);
                SendClientMessage(playerid, -1, "Atencao: Tome muito cuidado para nao cair e se machucar.");

                GetDynamicObjectPos(Balao[3], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
                MoveDynamicObject(Balao[3], BalaoPosX, BalaoPosY, BalaoPosZ+100, 3.0, 0.0, 0.0, 0.0);
                SetTimer("Balao04Timer01", 1000, false);
                return 1;
            }
            return SendClientMessage(playerid, -1, "ERRO: Um balao ja esta subindo aguarde ele terminar de subir.");
        }
        return SendClientMessage(playerid, -1, "ERRO: Este balao ja esta sendo usado por outro jogador aguarde.");
    }
    return SendClientMessage(playerid, -1, "ERRO: Voce nao esta proximo ao pickup de andar de balao.");
}

// Balao 01
forward Balao01Timer01();
public Balao01Timer01()
{
    if(IsDynamicObjectMoving(Balao[0]))
    {
        SetTimer("Balao01Timer01", 1000, false);
        return 1;
    }
    else
    {
        BaloesLiberados = true;
        SetTimer("Balao01Timer02", 1000, false);

        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[0], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[0], BalaoPosX, BalaoPosY+1000, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao01Timer02();
public Balao01Timer02()
{
    if(IsDynamicObjectMoving(Balao[0]))
    {
        SetTimer("Balao01Timer02", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao01Timer03", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[0], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[0], BalaoPosX+30, BalaoPosY, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao01Timer03();
public Balao01Timer03()
{
    if(IsDynamicObjectMoving(Balao[0]))
    {
        SetTimer("Balao01Timer03", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao01Timer04", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[0], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[0], BalaoPosX, BalaoPosY-1000, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao01Timer04();
public Balao01Timer04()
{
    if(IsDynamicObjectMoving(Balao[0]))
    {
        SetTimer("Balao01Timer04", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao01Timer05", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[0], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[0], BalaoPosX-30, BalaoPosY, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao01Timer05();
public Balao01Timer05()
{
    if(IsDynamicObjectMoving(Balao[0]))
    {
        SetTimer("Balao01Timer05", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao01Timer06", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[0], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[0], BalaoPosX, BalaoPosY, BalaoPosZ-100, 3.0, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao01Timer06();
public Balao01Timer06()
{
    if(IsDynamicObjectMoving(Balao[0]))
    {
        SetTimer("Balao01Timer06", 1000, false);
        return 1;
    }
    else
    {
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[0], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        SetDynamicObjectPos(Balao[0], 1862.869384, -2243.961669, 12.546875);
        BalaoDisponivel[0] = true;
    }
    return 1;
}

// Balao 02
forward Balao02Timer01();
public Balao02Timer01()
{
    if(IsDynamicObjectMoving(Balao[1]))
    {
        SetTimer("Balao02Timer01", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao02Timer02", 1000, false);
        BaloesLiberados = true;

        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[1], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[1], BalaoPosX, BalaoPosY+1000, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao02Timer02();
public Balao02Timer02()
{
    if(IsDynamicObjectMoving(Balao[1]))
    {
        SetTimer("Balao02Timer02", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao02Timer03", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[1], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[1], BalaoPosX+30, BalaoPosY, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao02Timer03();
public Balao02Timer03()
{
    if(IsDynamicObjectMoving(Balao[1]))
    {
        SetTimer("Balao02Timer03", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao02Timer04", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[1], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[1], BalaoPosX, BalaoPosY-1000, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao02Timer04();
public Balao02Timer04()
{
    if(IsDynamicObjectMoving(Balao[1]))
    {
        SetTimer("Balao02Timer04", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao02Timer05", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[1], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[1], BalaoPosX-30, BalaoPosY, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao02Timer05();
public Balao02Timer05()
{
    if(IsDynamicObjectMoving(Balao[1]))
    {
        SetTimer("Balao02Timer05", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao02Timer06", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[1], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[1], BalaoPosX, BalaoPosY, BalaoPosZ-100, 3.0, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao02Timer06();
public Balao02Timer06()
{
    if(IsDynamicObjectMoving(Balao[1]))
    {
        SetTimer("Balao02Timer06", 1000, false);
        return 1;
    }
    else
    {
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[1], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        SetDynamicObjectPos(Balao[1], 1862.869384, -2268.961669, 12.546875);
        BalaoDisponivel[1] = true;
    }
    return 1;
}

// Balao 03
forward Balao03Timer01();
public Balao03Timer01()
{
    if(IsDynamicObjectMoving(Balao[2]))
    {
        SetTimer("Balao03Timer01", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao03Timer02", 1000, false);
        BaloesLiberados = true;

        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[2], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[2], BalaoPosX, BalaoPosY+1000, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao03Timer02();
public Balao03Timer02()
{
    if(IsDynamicObjectMoving(Balao[2]))
    {
        SetTimer("Balao03Timer02", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao03Timer03", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[2], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[2], BalaoPosX+30, BalaoPosY, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao03Timer03();
public Balao03Timer03()
{
    if(IsDynamicObjectMoving(Balao[2]))
    {
        SetTimer("Balao03Timer03", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao03Timer04", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[2], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[2], BalaoPosX, BalaoPosY-1000, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao03Timer04();
public Balao03Timer04()
{
    if(IsDynamicObjectMoving(Balao[2]))
    {
        SetTimer("Balao03Timer04", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao03Timer05", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[2], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[2], BalaoPosX-30, BalaoPosY, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao03Timer05();
public Balao03Timer05()
{
    if(IsDynamicObjectMoving(Balao[2]))
    {
        SetTimer("Balao03Timer05", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao03Timer06", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[2], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[2], BalaoPosX, BalaoPosY, BalaoPosZ-100, 3.0, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao03Timer06();
public Balao03Timer06()
{
    if(IsDynamicObjectMoving(Balao[2]))
    {
        SetTimer("Balao03Timer06", 1000, false);
        return 1;
    }
    else
    {
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[2], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        SetDynamicObjectPos(Balao[2], 1862.869384, -2293.961669, 12.546875);
        BalaoDisponivel[2] = true;
    }
    return 1;
}

// Balao 04
forward Balao04Timer01();
public Balao04Timer01()
{
    if(IsDynamicObjectMoving(Balao[3]))
    {
        SetTimer("Balao04Timer01", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao04Timer02", 1000, false);
        BaloesLiberados = true;

        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[3], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[3], BalaoPosX, BalaoPosY+1000, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao04Timer02();
public Balao04Timer02()
{
    if(IsDynamicObjectMoving(Balao[3]))
    {
        SetTimer("Balao04Timer02", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao04Timer03", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[3], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[3], BalaoPosX+30, BalaoPosY, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao04Timer03();
public Balao04Timer03()
{
    if(IsDynamicObjectMoving(Balao[3]))
    {
        SetTimer("Balao04Timer03", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao04Timer04", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[3], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[3], BalaoPosX, BalaoPosY-1000, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao04Timer04();
public Balao04Timer04()
{
    if(IsDynamicObjectMoving(Balao[3]))
    {
        SetTimer("Balao04Timer04", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao04Timer05", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[3], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[3], BalaoPosX-30, BalaoPosY, BalaoPosZ, 3.5, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao04Timer05();
public Balao04Timer05()
{
    if(IsDynamicObjectMoving(Balao[3]))
    {
        SetTimer("Balao04Timer05", 1000, false);
        return 1;
    }
    else
    {
        SetTimer("Balao04Timer06", 1000, false);
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[3], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        MoveDynamicObject(Balao[3], BalaoPosX, BalaoPosY, BalaoPosZ-100, 3.0, 0.0, 0.0, 0.0);
    }
    return 1;
}

forward Balao04Timer06();
public Balao04Timer06()
{
    if(IsDynamicObjectMoving(Balao[3]))
    {
        SetTimer("Balao04Timer06", 1000, false);
        return 1;
    }
    else
    {
        new Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ;
        GetDynamicObjectPos(Balao[3], Float:BalaoPosX, Float:BalaoPosY, Float:BalaoPosZ);
        SetDynamicObjectPos(Balao[3], 1862.869384, -2318.961669, 12.546875);
        BalaoDisponivel[3] = true;
    }
    return 1;
}
