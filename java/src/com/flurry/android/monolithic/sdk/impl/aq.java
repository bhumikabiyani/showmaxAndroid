// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.view.ViewGroup;
import com.flurry.android.impl.ads.FlurryAdModule;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            an, ja, cl

public final class aq
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/aq.getSimpleName();
    private Map b;
    private Map c;
    private final ScheduledExecutorService d = Executors.newSingleThreadScheduledExecutor();

    public aq()
    {
        b = new HashMap();
        c = new HashMap();
    }

    private void a(String s, an an1)
    {
        Stack stack1 = (Stack)c.get(s);
        Stack stack = stack1;
        if (stack1 == null)
        {
            stack = new Stack();
            c.put(s, stack);
        }
        stack.push(new WeakReference(an1));
    }

    public an a(FlurryAdModule flurryadmodule, Context context, ViewGroup viewgroup, String s)
    {
        this;
        JVM INSTR monitorenter ;
        an an1 = a(s);
        if (an1 == null) goto _L2; else goto _L1
_L1:
        boolean flag = an1.getContext().equals(context);
        if (!flag) goto _L2; else goto _L3
_L3:
        flurryadmodule = an1;
_L5:
        this;
        JVM INSTR monitorexit ;
        return flurryadmodule;
_L2:
        flurryadmodule = new an(flurryadmodule, context, s, viewgroup, d);
        a(s, ((an) (flurryadmodule)));
        if (true) goto _L5; else goto _L4
_L4:
        flurryadmodule;
        throw flurryadmodule;
    }

    public an a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (!c.containsKey(s)) goto _L2; else goto _L1
_L1:
        s = (Stack)c.get(s);
        if (s.size() <= 0) goto _L4; else goto _L3
_L3:
        s = (an)((WeakReference)s.peek()).get();
_L6:
        this;
        JVM INSTR monitorexit ;
        return s;
_L4:
        s = null;
        continue; /* Loop/switch isn't completed */
_L2:
        s = null;
        if (true) goto _L6; else goto _L5
_L5:
        s;
        throw s;
    }

    public List a(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        Iterator iterator;
        arraylist = new ArrayList();
        iterator = c.values().iterator();
_L5:
        Iterator iterator1;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        iterator1 = ((Stack)iterator.next()).iterator();
_L2:
        an an1;
        do
        {
            if (!iterator1.hasNext())
            {
                break; /* Loop/switch isn't completed */
            }
            an1 = (an)((WeakReference)iterator1.next()).get();
        } while (an1 == null);
        if (context == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (context != an1.getContext()) goto _L2; else goto _L1
_L1:
        arraylist.add(an1);
        if (true) goto _L2; else goto _L3
_L3:
        if (true) goto _L5; else goto _L4
_L4:
        break MISSING_BLOCK_LABEL_112;
        context;
        throw context;
        return arraylist;
    }

    public void a(an an1)
    {
        this;
        JVM INSTR monitorenter ;
        if (an1 != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        String s;
        Stack stack;
        s = an1.getAdSpace();
        stack = (Stack)c.get(s);
        if (stack == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        Iterator iterator = stack.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            WeakReference weakreference = (WeakReference)iterator.next();
            if (an1 != weakreference.get())
            {
                continue;
            }
            if (stack.remove(weakreference))
            {
                ja.a(3, a, (new StringBuilder()).append("removed banner holder for adSpaceName: ").append(an1.getAdSpace()).toString());
            }
            break;
        } while (true);
        if (stack.size() == 0)
        {
            c.remove(s);
        }
        if (true) goto _L1; else goto _L3
_L3:
        an1;
        throw an1;
    }

    public void a(String s, cl cl1)
    {
        this;
        JVM INSTR monitorenter ;
        b.put(s, cl1);
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public cl b(String s)
    {
        this;
        JVM INSTR monitorenter ;
        s = (cl)b.remove(s);
        this;
        JVM INSTR monitorexit ;
        return s;
        s;
        throw s;
    }

    public void c(String s)
    {
        this;
        JVM INSTR monitorenter ;
        b.remove(s);
        this;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public boolean d(String s)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = b.containsKey(s);
        this;
        JVM INSTR monitorexit ;
        return flag;
        s;
        throw s;
    }

}
