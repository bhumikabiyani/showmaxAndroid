// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cx, cv, da, ct, 
//            cz, db

public final class cw
    implements cx
{

    private final List a;

    public cw()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new cv());
        arraylist.add(new da());
        arraylist.add(new ct());
        arraylist.add(new cz());
        a = Collections.unmodifiableList(arraylist);
    }

    public boolean a(Context context, db db)
    {
        if (context != null && db != null) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L4:
        return flag1;
_L2:
        Iterator iterator = a.iterator();
        boolean flag = true;
        do
        {
            flag1 = flag;
            if (!iterator.hasNext())
            {
                continue;
            }
            if (!((cx)iterator.next()).a(context, db))
            {
                flag = false;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }
}
