// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.model;


// Referenced classes of package com.google.android.gms.maps.model:
//            TileOverlayOptions, TileProvider, Tile

class t> extends com.google.android.gms.maps.model.internal.
{

    final TileOverlayOptions zzarL;
    final TileProvider zzarM;

    public Tile getTile(int i, int j, int k)
    {
        return zzarM.getTile(i, j, k);
    }

    (TileOverlayOptions tileoverlayoptions, TileProvider tileprovider)
    {
        zzarL = tileoverlayoptions;
        zzarM = tileprovider;
        super();
    }
}
