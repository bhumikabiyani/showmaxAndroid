// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.SdkAdEvent;
import com.flurry.android.impl.ads.avro.protocol.v6.SdkAdLog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            m, k

public class ae
{

    private final FlurryAdModule a;

    public ae(FlurryAdModule flurryadmodule)
    {
        a = flurryadmodule;
    }

    public List a(List list)
    {
        CopyOnWriteArrayList copyonwritearraylist;
        Iterator iterator;
        copyonwritearraylist = new CopyOnWriteArrayList();
        iterator = list.iterator();
_L3:
        Object obj;
        m m1;
        SdkAdLog sdkadlog;
        SdkAdEvent sdkadevent;
        Object obj1;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        m1 = (m)iterator.next();
        sdkadlog = new SdkAdLog();
        sdkadlog.a(Long.valueOf(m1.c()));
        Iterator iterator1;
        Object obj2;
        java.util.Map.Entry entry;
        if (m1.b() == null)
        {
            obj = "";
        } else
        {
            obj = m1.b();
        }
        sdkadlog.a(((CharSequence) (obj)));
        obj = new CopyOnWriteArrayList();
        m1;
        JVM INSTR monitorenter ;
        iterator1 = m1.d().iterator();
_L1:
        do
        {
            if (!iterator1.hasNext())
            {
                break MISSING_BLOCK_LABEL_267;
            }
            obj1 = (k)iterator1.next();
        } while (!((k) (obj1)).b());
        sdkadevent = new SdkAdEvent();
        sdkadevent.a(((k) (obj1)).a());
        sdkadevent.a(Long.valueOf(((k) (obj1)).c()));
        obj2 = ((k) (obj1)).d();
        obj1 = new HashMap();
        for (obj2 = ((Map) (obj2)).entrySet().iterator(); ((Iterator) (obj2)).hasNext(); ((Map) (obj1)).put(entry.getKey(), entry.getValue()))
        {
            entry = (java.util.Map.Entry)((Iterator) (obj2)).next();
        }

        break MISSING_BLOCK_LABEL_248;
        list;
        m1;
        JVM INSTR monitorexit ;
        throw list;
        sdkadevent.a(((Map) (obj1)));
        ((List) (obj)).add(sdkadevent);
          goto _L1
        m1;
        JVM INSTR monitorexit ;
        sdkadlog.a(((List) (obj)));
        copyonwritearraylist.add(sdkadlog);
        if (true) goto _L3; else goto _L2
_L2:
        a.a(list);
        return copyonwritearraylist;
    }
}
