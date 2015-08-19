// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games:
//            Games

public static final class <init>
{

    boolean zzacA;
    boolean zzacB;
    int zzacC;
    boolean zzacD;
    int zzacE;
    String zzacF;
    ArrayList zzacG;

    public <init> build()
    {
        return new <init>(this, null);
    }

    public <init> setSdkVariant(int i)
    {
        zzacE = i;
        return this;
    }

    public zzacE setShowConnectingPopup(boolean flag)
    {
        zzacB = flag;
        zzacC = 17;
        return this;
    }

    public zzacC setShowConnectingPopup(boolean flag, int i)
    {
        zzacB = flag;
        zzacC = i;
        return this;
    }

    private ()
    {
        zzacA = false;
        zzacB = true;
        zzacC = 17;
        zzacD = false;
        zzacE = 4368;
        zzacF = null;
        zzacG = new ArrayList();
    }

    zzacG(zzacG zzacg)
    {
        this();
    }
}
