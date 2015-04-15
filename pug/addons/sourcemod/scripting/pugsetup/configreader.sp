/**
 * Update maplist info and fetch any workshop info needed.
 */
public void InitMapSettings() {
    ClearArray(g_MapList);

    char maplist[PLATFORM_MAX_PATH];
    g_hMapList.GetString(maplist, sizeof(maplist));

    int collectionID = StringToInt(maplist);

    if (collectionID == 0) {
        // it's a regular map list
        GetMapList(maplist);
    } else {
        // it's a workshop collection id, setup the workshop cache
        BuildPath(Path_SM, g_DataDir, sizeof(g_DataDir), "data/pugsetup");

        if (!DirExists(g_DataDir)) {
            CreateDirectory(g_DataDir, 511);
        }

        Format(g_CacheFile, sizeof(g_CacheFile), "%s/cache.cfg", g_DataDir);
        g_WorkshopCache = new KeyValues("Workshop");
        g_WorkshopCache.ImportFromFile(g_CacheFile);
        UpdateWorkshopCache(collectionID);
    }
}

public void ReadChatConfig() {
    char configFile[PLATFORM_MAX_PATH];
    BuildPath(Path_SM, configFile, sizeof(configFile), "configs/pugsetup/chataliases.cfg");
    KeyValues kv = new KeyValues("ChatAliases");
    if (kv.ImportFromFile(configFile) && kv.GotoFirstSubKey(false)) {
        do {
            char alias[ALIAS_LENGTH];
            char command[COMMAND_LENGTH];
            kv.GetSectionName(alias, sizeof(alias));
            kv.GetString(NULL_STRING, command, sizeof(command));
            AddChatAlias(alias, command);
        } while (kv.GotoNextKey(false));
    }
    delete kv;
}
