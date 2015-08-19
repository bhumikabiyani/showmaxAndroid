// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games:
//            Games

public static final class Builder
    implements com.google.android.gms.common.api.onal
{
    public static final class Builder
    {

        boolean zzacA;
        boolean zzacB;
        int zzacC;
        boolean zzacD;
        int zzacE;
        String zzacF;
        ArrayList zzacG;

        public Games.GamesOptions build()
        {
            return new Games.GamesOptions(this, null);
        }

        public Builder setSdkVariant(int i)
        {
            zzacE = i;
            return this;
        }

        public Builder setShowConnectingPopup(boolean flag)
        {
            zzacB = flag;
            zzacC = 17;
            return this;
        }

        public Builder setShowConnectingPopup(boolean flag, int i)
        {
            zzacB = flag;
            zzacC = i;
            return this;
        }

        private Builder()
        {
            zzacA = false;
            zzacB = true;
            zzacC = 17;
            zzacD = false;
            zzacE = 4368;
            zzacF = null;
            zzacG = new ArrayList();
        }

        Builder(Games._cls1 _pcls1)
        {
            this();
        }
    }


    public final boolean zzacA;
    public final boolean zzacB;
    public final int zzacC;
    public final boolean zzacD;
    public final int zzacE;
    public final String zzacF;
    public final ArrayList zzacG;

    public static Builder builder()
    {
        return new Builder(null);
    }

    private Builder()
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

    private Builder(Builder builder1)
    {
        zzacA = builder1.zzacA;
        zzacB = builder1.zzacB;
        zzacC = builder1.zzacC;
        zzacD = builder1.zzacD;
        zzacE = builder1.zzacE;
        zzacF = builder1.zzacF;
        zzacG = builder1.zzacG;
    }

    Builder(Builder builder1, Builder builder2)
    {
        this(builder1);
    }
}
