// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            am, co, ab, cx, 
//            cw, il, db, m, 
//            ac, cn

public abstract class cy
    implements am, co
{

    public cy()
    {
    }

    protected abstract ac a(Context context, FlurryAdModule flurryadmodule, m m1, AdCreative adcreative, Bundle bundle);

    public ac a(Context context, FlurryAdModule flurryadmodule, m m1, AdUnit adunit)
    {
        if (context != null && flurryadmodule != null && m1 != null && adunit != null && b(context, e()))
        {
            Bundle bundle = c(context, flurryadmodule, m1, adunit);
            if (bundle != null)
            {
                adunit = ab.a(adunit);
                if (adunit != null)
                {
                    return a(context, flurryadmodule, m1, ((AdCreative) (adunit)), bundle);
                }
            }
        }
        return null;
    }

    protected abstract cn a(Context context, FlurryAdModule flurryadmodule, m m1, AdUnit adunit, Bundle bundle);

    protected cx a()
    {
        return c();
    }

    protected boolean a(Context context, db db1)
    {
        cx cx1;
        if (context != null && db1 != null)
        {
            if ((cx1 = a()) != null)
            {
                return cx1.a(context, db1);
            }
        }
        return false;
    }

    public cn a_(Context context, FlurryAdModule flurryadmodule, m m1, AdUnit adunit)
    {
        if (context != null && flurryadmodule != null && m1 != null && adunit != null && a(context, d()))
        {
            Bundle bundle = b(context, flurryadmodule, m1, adunit);
            if (bundle != null)
            {
                return a(context, flurryadmodule, m1, adunit, bundle);
            }
        }
        return null;
    }

    protected Bundle b(Context context, FlurryAdModule flurryadmodule, m m1, AdUnit adunit)
    {
        return d(context, flurryadmodule, m1, adunit);
    }

    protected cx b()
    {
        return c();
    }

    protected boolean b(Context context, db db1)
    {
        cx cx1;
        if (context != null && db1 != null)
        {
            if ((cx1 = b()) != null)
            {
                return cx1.a(context, db1);
            }
        }
        return false;
    }

    protected Bundle c(Context context, FlurryAdModule flurryadmodule, m m1, AdUnit adunit)
    {
        return d(context, flurryadmodule, m1, adunit);
    }

    protected cx c()
    {
        return new cw();
    }

    protected Bundle d(Context context, FlurryAdModule flurryadmodule, m m1, AdUnit adunit)
    {
        return il.e(context);
    }

    protected db d()
    {
        return new db(f(), g(), h(), i(), j());
    }

    protected db e()
    {
        return new db(f(), k(), l(), m(), Collections.emptyList());
    }

    protected abstract String f();

    protected abstract List g();

    protected List h()
    {
        return n();
    }

    protected List i()
    {
        return o();
    }

    protected abstract List j();

    protected abstract List k();

    protected List l()
    {
        return n();
    }

    protected List m()
    {
        return o();
    }

    protected abstract List n();

    protected abstract List o();
}
