/*
All assert strings:
    Ret == 0
    (offset+size) <= (gAssetLoader.pMasterHeader->size + sizeof(TGenericPackHeader))
    (offset%MY_PAGE_SIZE) == 0
    ((u32)start%MY_PAGE_SIZE) == 0
    ((u32)gAssetLoader.pStartOfFreeSpriteRAM+size) <= ((u32)gAssetLoader.pStartOfSpriteRAM + MAX_SPRITE_RAM)
    ((u32)gAssetLoader.pStartOfFreeRAM+(guessSize)) <= ((u32)gAssetLoader.pStartOfRAM + MAX_RAM)
    ((u32)gAssetLoader.pStartOfFreeRAM+size) <= ((u32)gAssetLoader.pStartOfRAM + MAX_RAM)
    ((u32)gAssetLoader.pStartOfFreeSpriteRAM+(guessSize)) <= ((u32)gAssetLoader.pStartOfSpriteRAM + MAX_SPRITE_RAM)
    (pHeader->signature == PACK_SIG) && (pHeader->type == EPackTypes_CSV)
    (pHeader->signature == PACK_SIG) && (pHeader->type == EPackTypes_Sprite)
    (nRomOffset%MY_PAGE_SIZE)==0
    (pHeader->signature == PACK_SIG) && (pHeader->type == EPackTypes_Background)
    (pHeader->signature == PACK_SIG) && (pHeader->type == EPackTypes_Pal)
    (pHeader->signature == PACK_SIG) && (pHeader->type == EPackTypes_TiledBackground)
    (sig == PACK_SIG) && (type == EPackTypes_Packed)
    nSubPack < nPacks
    nRet == 0
    ((u32)gAssetLoader.pPackOffset % MY_PAGE_SIZE) ==0
    nPackIndex < gAssetLoader.pMasterPackBlock->nPacks
    (u32)pPack > (u32)gAssetLoader.pStartOfRAM
    ((u32)pPack > (u32)gAssetLoader.pStartOfRAM) && ((u32)pPack < (u32)(gAssetLoader.pStartOfRAM + gAssetLoader.pMasterHeader->size))
    (gAssetLoader.pStartOfFreeRAM + nSize + MY_PAGE_SIZE) < (gAssetLoader.pStartOfRAM+MAX_RAM)

*/