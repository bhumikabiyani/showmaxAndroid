// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.FlurryAdSize;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdFrame;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ca, br, ja, cc, 
//            ab

public class cb
    implements ca
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/cb.getSimpleName();
    private br b;

    public cb()
    {
    }

    private void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (b != null)
        {
            b.a(true);
            b = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void a(cb cb1)
    {
        cb1.a();
    }

    public void a(String s, int i, int j, List list)
    {
        if (j < 2)
        {
            a(s, list);
        }
    }

    public void a(String s, List list)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = b;
        if (obj == null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_229;
        }
        break MISSING_BLOCK_LABEL_18;
_L5:
        boolean flag;
        if (!flag) goto _L4; else goto _L3
_L3:
        obj = FlurryAdSize.BANNER_BOTTOM;
_L6:
        s1 = a;
        stringbuilder = (new StringBuilder()).append("Starting AsyncAdTask from EnsureCacheNotEmpty size: ");
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_223;
        }
        list = Integer.toString(list.size());
_L7:
        ja.a(3, s1, stringbuilder.append(list).toString());
        list = FlurryAdModule.getInstance();
        list.getClass();
        b = new br(list, s, null, false, ((FlurryAdSize) (obj)), new cc(this));
        b.a();
          goto _L1
        s;
        throw s;
        String s1;
        StringBuilder stringbuilder;
        if (list.size() == 0 || ((AdUnit)list.get(0)).d().size() == 0 || ((AdFrame)((AdUnit)list.get(0)).d().get(0)).e() == null)
        {
            break MISSING_BLOCK_LABEL_229;
        }
        flag = false;
          goto _L5
_L4:
        obj = ab.b(((AdFrame)((AdUnit)list.get(0)).d().get(0)).e());
          goto _L6
        list = "";
          goto _L7
        flag = true;
          goto _L5
    }

}
