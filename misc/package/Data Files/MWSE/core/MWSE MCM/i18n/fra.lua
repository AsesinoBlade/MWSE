-- French translation by Daichi
return {
	["notice.label"] = "Note :",
	["notice.text"] = "Ces options peuvent ne pas prendre effet avant le prochain lancement du jeu.",
	["credits.label"] = "Les personnes suivantes ont contribu� � Morrowind Script Extender:",
	["logWarningsWithLuaStack.label"] = "Journalisation des avertissements avec  Log warnings with lua stacktrace?",
	["logWarningsWithLuaStack.text"] = "Si cette option est activ�e, tout avertissement d�clench� en cours de jeu qui g�n�re une ligne dans Warnings.txt g�n�rera �galement des lignes dans mwse.log. De plus, une trace d'appels sera fournie pour contextualiser quel mod a pu �tre responsable de l'avertissement g�n�r�.\n\nCette fonction peut entra�ner la g�n�ration d'entr�es superflues dans les fichiers log si vous utilisez certains mods (par exemple Better Bodies).",
	["runInBackground.label"] = "Faire tourner Morrowind en arri�re-plan?",
	["runInBackground.text"] = "Par d�faut, Morrowind suspend l'ex�cution d'une grande part de son code lorsqu'il n'est pas au premier plan. Lorsque vous utilisez le mode fen�tr� (y compris le mode plein �cran sans bordures), cette option permet � Morrowind de continuer � tourner. L'activation de cette option peut �galement am�liorer la stabilit� du jeu en raison de la fa�on dont Morrowind g�re certains fils d'ex�cution audio.",
	["patchNiFlipController.label"] = "Corriger le clonage des NiFlipController?",
	["patchNiFlipController.text"] = "Morrowind g�re de fa�on incorrecte le mapping affect� lorsqu'il clone des objets NiFlipController, ce qui emp�che les mods d'utiliser ces contr�leurs pour quoi que ce soit d'autre que la base map. MWSE corrige ce probl�me, mais certains mods contiennent des mod�les bugg�s auxquels est assign� le mapping affect� incorrect et qui d�pendent du bug pour r�assigner le contr�leur � la base map. D�sactiver cette option activera le support de ces mods, mais emp�chera des mods plus r�cents de profiter du contr�leur corrig�.\n\nIl est recommand� de laisser cette option activ�e � moins que n'ayez la certitude d'avoir besoin d'activer la compatibilit� avec des mods concern�s.",
	["keepAllNetImmerseObjectsAlive.label"] = "Mettre en cache tous les objets lua NetImmerse?",
	["keepAllNetImmerseObjectsAlive.text"] = "ATTENTION : Utilis� uniquement pour faire du d�buggage. Si vous ne savez pas ce que vous faites, activer cette option causera A COUP SUR des fuites de m�moire.\n\nQuand cette option est activ�e, les objets NetImmerse utiliseront le m�me syst�me de mise en cache d'objets lua que celui utilis� pour les objets TES3, ce qui permet de les comparer en tant que cha�nes de caract�res ou de les utiliser comme cl�s de tableaux.",
	["enableLegacyLuaMods.label"] = "Activer les vieux mods lua?",
	["enableLegacyLuaMods.text"] = "Cette option active le support des mods lua cr��s au tout d�but de MWSE 2.1.\n\nCes mods se trouvent dans le dossier suivant :\nData Files\\MWSE\\lua.",
}