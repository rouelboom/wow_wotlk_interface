-- esES Spanish

local AddOnName, MoveAny = ...

function MoveAny:LangesES()
	local tab = {
		["LID_MMBTNLEFT"] = "Clic izquierdo => Bloquear/Desbloquear + Opciones",
		["LID_MMBTNRIGHT"] = "Mayúsculas + Clic derecho => Ocultar botón del minimapa",

		["LID_GENERAL"] = "General",
		["LID_SHOWMINIMAPBUTTON"] = "Mostrar el botón del mapa mínimo",
		["LID_GRIDSIZE"] = "Tamaño de la cuadrícula",
		["LID_MOVEFRAMES"] = "Mover cuadros/ventanas",
		["LID_FRAMESSHIFTDRAG"] = "Mover marco con Shift + arrastrar con el botón izquierdo",
		["LID_FRAMESSHIFTSCALE"] = "Escalar el marco con Shift + arrastrar con el botón derecho",
		["LID_FRAMESSHIFTRESET"] = "Restablecer el marco con Mayúsculas + arrastrar con la rueda del ratón",

		["LID_PLAYERFRAME"] = "Marco del jugador",
		["LID_PETFRAME"] = "Marco de la mascota",
		["LID_TARGETFRAME"] = "Marco del objetivo",
		["LID_TARGETOFTARGETFRAME"] = "Marco del objetivo",
		["LID_TARGETFRAMESPELLBAR"] = "Barra de colada del objetivo",
		["LID_FOCUSFRAME"] = "Marco de enfoque",
		["LID_FOCUSFRAMESPELLBAR"] = "Barra de fundición del foco",
		["LID_TARGETOFFOCUSFRAME"] = "Objetivo del marco de enfoque",
		["LID_RUNEFRAME"] = "Marco del Caballero de la Muerte - Runas",
		["LID_TOTEMFRAME"] = "Marco de Tótems",
		["LID_WARLOCKPOWERFRAME"] = "Marco de Poder del Brujo",
		["LID_MONKHARMONYBARFRAME"] = "Marco de Armonía del Monje",
		["LID_MAGEARCANECHARGESFRAME"] = "Marco de carga arcana del mago",
		["LID_ESSENCEPLAYERFRAME"] = "Marco de jugador de esencia (evocador)",
		["LID_MAFPSFrame"] = "FPS",

		["LID_MINIMAP"] = "Mini Mapa",
		["LID_BUFFS"] = "Buffs",
		["LID_DEBUFFS"] = "Debuffs",
		["LID_VEHICLESEATINDICATOR"] = "Indicador del asiento del vehículo",
		["LID_ARENAENEMYFRAMES"] = "Marcos del enemigo de la arena",
		["LID_ARENAPREPFRAMES"] = "Marcos de preparación de la arena",
		["LID_QUESTTRACKER"] = "Questtracker",

		["LID_MICROMENU"] = "Micro Menú",
		["LID_BAGS"] = "Bolsas",
		["LID_GAMETOOLTIP"] = "Información sobre herramientas",
		["LID_GAMETOOLTIP_ONCURSOR"] = "Información sobre herramientas en el cursor",
		["LID_QUEUESTATUSBUTTON"] = "Estado de LFG",

		["LID_PETBAR"] = "Barra de mascotas",
		["LID_STANCEBAR"] = "Barra de postura",
		["LID_TOTEMBAR"] = "Chamán - Barra de tótem",
		["LID_LEAVEVEHICLE"] = "Botón de dejar el vehículo",
		["LID_GROUPLOOTCONTAINER"] = "Marco del rollo de botín",
		["LID_STATUSTRACKINGBARMANAGER"] = "Gestor de la barra de seguimiento de estado (XP, reputación)",
		["LID_ALERTFRAME"] = "Marco de alerta (Bonus Loot, Achiements, ...)",

		["LID_CHAT"] = "Marco de chat %d",
		["LID_CHATBUTTONFRAME"] = "Botones de chat",
		["LID_CHATQUICKJOIN"] = "Chat Quick Join",
		["LID_CHATEDITBOX"] = "Caja de entrada del chat",

		["LID_COMPACTRAIDFRAMEMANAGER"] = "Gestor de incursiones",
		["LID_BNToastFrame"] = "Notificaciones de amigos de Battlenet",



		["LID_ZONETEXTFRAME"] = "Texto de la zona",
		["LID_UIWIDGETTOPCENTER"] = "Widget Top Center (Status on BGs/Dungeons)",
		["LID_IASKILLS"] = "Barras de habilidades",
		["LID_UIWIDGETBELOWMINIMAP"] = "Widget Below Minimap (Estado de captura)",
		["LID_DURABILITY"] = "Muñeca de durabilidad",
		["LID_MONEYBAR"] = "Barra de dinero",
		["LID_TOKENBAR"] = "Barra de fichas",
		["LID_IAILVLBAR"] = "Barra de nivel de artículo",
		["LID_CASTINGBAR"] = "Barra de reparto",
		["LID_TALKINGHEAD"] = "Diálogo de la cabeza parlante",
		["LID_POSSESSBAR"] = "Barra de posesión (control de NPC/vehículo)",
		["LID_ZONEABILITYFRAME"] = "Habilidad de zona",
		["LID_EXTRAABILITYCONTAINER"] = "Habilidad extra",
		["LID_MAINMENUEXPBAR"] = "Barra de Exp",
		["LID_REPUTATIONWATCHBAR"] = "Barra de reputación",
		["LID_UIWIDGETPOWERBAR"] = "Barra de poder",

		["LID_ROWS"] = "Filas",
		["LID_SPACING"] = "Espacios",
		
		

		["LID_PROFILE"] = "Perfil",
		["LID_PROFILES"] = "Perfiles",
		["LID_ADDPROFILE"] = "Añadir perfil",
		["LID_CURRENT"] = "Actual",
		["LID_SHARE"] = "Compartir",
		["LID_SHAREPROFILE"] = "Compartir perfil",
		["LID_GETPROFILE"] = "Obtener perfil",
		["LID_INHERITFROM"] = "Heredar de",
		["LID_ADD"] = "Añadir",
		["LID_REMOVE"] = "Eliminar",
		["LID_RENAME"] = "Renombrar",
		["LID_PLAYER"] = "Reproductor",
		["LID_DOWNLOAD"] = "Descargar",
		["LID_UPLOAD"] = "Subir",
		["LID_STATUS"] = "Estado",
		["LID_DONE"] = "Hecho",
		["LID_WAITINGFOROWNER"] = "Esperando al propietario",
		["LID_WAITFORPLAYERPROFILE"] = "Esperando a que el otro jugador pulse Obtener perfiles",
		["LID_WAITFORPLAYERPROFILE2"] = "Esperar a que el otro jugador pulse Compartir.",

		["LID_ALPHAINCOMBAT"] = "Alfa (en combate)",
		["LID_ALPHANOTINCOMBAT"] = "Alfa (no en Combate)",
		["LID_ALPHAINVEHICLE"] = "Alfa (en vehículo)",

		["LID_MABUFFLIMIT"] = "Límite de buff",
		["LID_MABUFFSPACINGX"] = "Espacio de buff horizontal",
		["LID_MABUFFSPACINGY"] = "Espaciado de buff vertical",

		["LID_ISENABLEDINEDITMODE"] = "(Deshabilitarlo en EditMode)",
		["LID_CANBREAKBECAUSEOFEDITMODE"] = "(Puede causar error debido al modo de edición)",

		["LID_HELPTEXT"] = "\"%s\" ya está activado en EditMode. Por favor, desactívelo en EditMode o MoveAny",
	
		["LID_BUILTIN"] = "Incorporado",
		["LID_EDITMODE"] = "Modo Edición Sobrescribir",
		["LID_NORMAL"] = "Normal",
		["LID_CLASSSPECIFIC"] = "Específico de clase",
		["LID_ADVANCED"] = "Avanzado",
		["LID_ImproveAny"] = "ImproveAny",

		["LID_MISSINGREQUIREMENT"] = "Falta casilla de verificación: %s",
		["LID_ARCHEOLOGYDIGSITEPROGRESSBAR"] = "Barra de progreso del sitio arqueológico",
		["LID_UIERRORSFRAME"] = "Mensajes de error de la interfaz de usuario, progreso de la búsqueda",
		["LID_COMBOPOINTPLAYERFRAME"] = "Puntos de combo",

		["LID_PARTYFRAME"] = "Marco de fiesta",
		["LID_PARTYMEMBERFRAME"] = "Marco de miembro de party %s",
		["LID_BOSSTARGETFRAMECONTAINER"] = "Marcos de jefe",

		["LID_FLIPPED"] = "Volteado",
		["LID_GHOSTFRAME"] = "Fotograma fantasma (teletransporte al cementerio)",
		["LID_TICKETSTATUSFRAME"] = "Fotograma de ticket",
		["LID_LOSSOFCONTROLFRAME"] = "Cuadro de pérdida de control",

		["LID_MainStatusTrackingBarContainer"] = "Barra de Exp",
		["LID_SecondaryStatusTrackingBarContainer"] = "Barra de Reputación",

		["LID_TargetFrameNumericalThreat"] = "Porcentaje de amenaza",
	}

	if MoveAny:GetWoWBuild() ~= "RETAIL" then
		tab["LID_ACTIONBARS"] = "Barra de acción 1 + 5 + 6"
		tab["LID_ACTIONBAR1"] = "Barra de acción 1 (Barra principal)"
		tab["LID_ACTIONBAR2"] = "Barra de acción 2 (2. Página de Actionbar 1)"
		tab["LID_ACTIONBAR3"] = "Barra de acción 3 (Barra derecha)"
		tab["LID_ACTIONBAR4"] = "Barra de acción 4 (Barra izquierda)"
		tab["LID_ACTIONBAR5"] = "Barra de acción 5 (barra superior derecha)"
		tab["LID_ACTIONBAR6"] = "Barra de acción 6 (barra superior izquierda)"
		tab["LID_ACTIONBAR7"] = "Barra de acción 7 (personalizada)"
		tab["LID_ACTIONBAR8"] = "Barra de acción 8 (personalizada)"
		tab["LID_ACTIONBAR9"] = "Barra de acción 9 (personalizada)"
		tab["LID_ACTIONBAR10"] = "Barra de acción 10 (personalizada)"
	else
		tab["LID_ACTIONBAR1"] = "Barra de acción 1 (Barra principal)"
		tab["LID_ACTIONBAR2"] = "Barra de acción 2 (Sobre la barra principal)"
		tab["LID_ACTIONBAR3"] = "Barra de acción 3 (Sobre la segunda barra)"
		tab["LID_ACTIONBAR4"] = "Barra de acción 4 (Barra derecha)"
		tab["LID_ACTIONBAR5"] = "Barra de acción 5 (barra izquierda)"
		tab["LID_ACTIONBAR6"] = "Barra de acción 6"
		tab["LID_ACTIONBAR7"] = "Barra de acción 7"
		tab["LID_ACTIONBAR8"] = "Barra de acción 8"
	end

	MoveAny:UpdateLanguageTab( tab )
end