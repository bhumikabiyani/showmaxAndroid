// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.text.TextUtils;
import com.flurry.android.impl.appcloud.AppCloudModule;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            gf, hd, ft, ja, 
//            hk

public abstract class gb
{

    protected gf a;

    public gb()
    {
        a = null;
    }

    public hk a(String s)
    {
        return a.b(s);
    }

    protected void a(String s, String s1, String s2)
    {
        b(s, s1, s2);
        if (AppCloudModule.getInstance().b() != null)
        {
            AppCloudModule.getInstance().b().a(s, s1, s2);
        }
    }

    public boolean a(String s, String s1, String s2, String s3)
    {
        return b(s, s1, s2, s3);
    }

    protected void b(String s, String s1, String s2)
    {
        if (ft.e() != null && TextUtils.equals(ft.e().a(), s))
        {
            ft.e().a(s1, s2);
        }
    }

    public boolean b(String s)
    {
        return a.a(s);
    }

    protected boolean b(String s, String s1, String s2, String s3)
    {
        String s4 = c(s, s2, s3);
        ja.a(4, "CacheContentProvider", (new StringBuilder()).append("value in cache = ").append(s4).append(" ; new value = ").append(s1).toString());
        if (!s1.equals(s4))
        {
            a(s2, s, s1);
            a.a(s, s1, s2, s3);
            return true;
        } else
        {
            return false;
        }
    }

    public String c(String s, String s1, String s2)
    {
        return a.a(s, s1, s2);
    }
}
