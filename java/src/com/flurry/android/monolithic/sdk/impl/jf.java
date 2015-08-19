// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.PrintStream;
import java.io.PrintWriter;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ja

public abstract class jf
    implements Runnable
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/jf.getSimpleName();
    PrintStream i;
    PrintWriter j;

    public jf()
    {
    }

    public abstract void a();

    public final void run()
    {
        try
        {
            a();
            return;
        }
        catch (Throwable throwable)
        {
            if (i != null)
            {
                throwable.printStackTrace(i);
            } else
            if (j != null)
            {
                throwable.printStackTrace(j);
            } else
            {
                throwable.printStackTrace();
            }
        }
        ja.a(6, a, "", throwable);
    }

}
