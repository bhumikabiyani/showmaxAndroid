// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;


// Referenced classes of package com.google.android.gms.games.internal:
//            AbstractGamesClient, GamesClientImpl, PopupLocationInfoParcelable, PopupManager

private static final class zzadT extends AbstractGamesClient
{

    private final PopupManager zzadT;

    public PopupLocationInfoParcelable zznk()
    {
        return new PopupLocationInfoParcelable(zzadT.zzof());
    }

    public (PopupManager popupmanager)
    {
        zzadT = popupmanager;
    }
}
