// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

// Referenced classes of package com.google.android.gms.tagmanager:
//            TagManager

class zzaAT
    implements ComponentCallbacks2
{

    final TagManager zzaAT;

    public void onConfigurationChanged(Configuration configuration)
    {
    }

    public void onLowMemory()
    {
    }

    public void onTrimMemory(int i)
    {
        if (i == 20)
        {
            zzaAT.dispatch();
        }
    }

    (TagManager tagmanager)
    {
        zzaAT = tagmanager;
        super();
    }
}
