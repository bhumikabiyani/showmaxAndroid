// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;


// Referenced classes of package com.google.android.gms.tagmanager:
//            zzcu

static final class zzaAH
    implements Runnable
{

    final android.content.references.Editor zzaAH;

    public void run()
    {
        zzaAH.commit();
    }

    (android.content.references.Editor editor)
    {
        zzaAH = editor;
        super();
    }
}
