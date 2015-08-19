// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            co, de, m, cn

public final class dd
    implements co
{

    private final List a;

    public dd()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new de());
        a = Collections.unmodifiableList(arraylist);
    }

    public cn a_(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit)
    {
        cn cn = null;
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            cn cn1 = ((co)iterator.next()).a_(context, flurryadmodule, m, adunit);
            cn = cn1;
            if (cn1 == null)
            {
                continue;
            }
            cn = cn1;
            break;
        } while (true);
        return cn;
    }
}
