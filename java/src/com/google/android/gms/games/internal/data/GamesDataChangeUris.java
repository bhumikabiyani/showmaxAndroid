// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.data;

import android.net.Uri;

public final class GamesDataChangeUris
{

    private static final Uri zzahK;
    public static final Uri zzahL;
    public static final Uri zzahM;

    public GamesDataChangeUris()
    {
    }

    static 
    {
        zzahK = Uri.parse("content://com.google.android.gms.games/").buildUpon().appendPath("data_change").build();
        zzahL = zzahK.buildUpon().appendPath("invitations").build();
        zzahM = zzahK.buildUpon().appendEncodedPath("players").build();
    }
}
