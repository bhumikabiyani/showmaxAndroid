// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.view.ViewGroup;
import com.flurry.android.FlurryAdListener;
import com.flurry.android.FlurryAdSize;
import com.flurry.android.FlurryAdType;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aq, ad, br, ja, 
//            an, by, cl, af, 
//            bx, jc, jf

public class bw
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/bw.getSimpleName();
    private aq b;
    private ad c;
    private FlurryAdModule d;

    public bw(FlurryAdModule flurryadmodule)
    {
        d = flurryadmodule;
        b = new aq();
        c = new ad();
    }

    ad a()
    {
        return c;
    }

    public an a(FlurryAdModule flurryadmodule, Context context, ViewGroup viewgroup, String s)
    {
        return b.a(flurryadmodule, context, viewgroup, s);
    }

    public an a(String s)
    {
        return b.a(s);
    }

    br a(String s, ViewGroup viewgroup, boolean flag, FlurryAdSize flurryadsize, jf jf)
    {
        FlurryAdModule flurryadmodule = d;
        flurryadmodule.getClass();
        s = new br(flurryadmodule, s, viewgroup, flag, flurryadsize, jf);
        s.a();
        return s;
    }

    public List a(String s, int i, int j)
    {
        return c.a(s, i, j);
    }

    public void a(Context context, String s)
    {
        ja.a(3, a, (new StringBuilder()).append("_removeAd(context = ").append(context).append(", adSpaceName = ").append(s).append(")").toString());
        context = b.a(s);
        if (context == null)
        {
            d(s);
            return;
        }
        context.b();
        ViewGroup viewgroup = context.getViewGroup();
        if (viewgroup != null)
        {
            context.removeAllViews();
            viewgroup.removeView(context);
        }
        d(s);
        b.a(context);
    }

    public void a(Context context, String s, ViewGroup viewgroup, FlurryAdSize flurryadsize)
    {
        if (!b())
        {
            ja.a(5, a, "There is no network connectivity (ad will not Fetch)");
            context = d.K();
            if (context != null)
            {
                context.spaceDidFailToReceiveAd(s.toString());
            }
            return;
        }
        if (e(s) && !c())
        {
            b(context, s);
            return;
        } else
        {
            a(s, viewgroup, false, flurryadsize, ((jf) (new by(this, context, s))));
            return;
        }
    }

    void a(String s, int i)
    {
        c.a(s, i);
    }

    void a(String s, cl cl1)
    {
        b.a(s, cl1);
    }

    void a(String s, String s1)
    {
        c.a(s, s1);
    }

    void a(List list)
    {
        c.a(list);
    }

    public boolean a(Context context)
    {
        boolean flag = false;
        context = b.a(context).iterator();
        int i;
        for (i = 0; context.hasNext(); i++)
        {
            an an1 = (an)context.next();
            an1.b();
            an1.removeAllViews();
            ViewGroup viewgroup = an1.getViewGroup();
            if (viewgroup != null)
            {
                viewgroup.removeView(an1);
            }
            b.a(an1);
        }

        if (i > 0)
        {
            flag = true;
        }
        return flag;
    }

    public boolean a(Context context, String s, ViewGroup viewgroup)
    {
        if (!b())
        {
            ja.a(5, a, "There is no network connectivity (ad will not Display)");
            context = d.K();
            if (context != null)
            {
                context.spaceDidFailToReceiveAd(s.toString());
            }
        } else
        {
            cl cl1 = c(s);
            if (cl1 != null)
            {
                AdUnit adunit = cl1.b();
                FlurryAdListener flurryadlistener = d.K();
                FlurryAdType flurryadtype;
                if (cl1 instanceof af)
                {
                    flurryadtype = FlurryAdType.WEB_BANNER;
                } else
                {
                    flurryadtype = FlurryAdType.WEB_TAKEOVER;
                }
                if (flurryadlistener != null && !flurryadlistener.shouldDisplayAd(s, flurryadtype))
                {
                    a(s, cl1);
                    return false;
                } else
                {
                    d.a(context, adunit, cl1);
                    cl1.a(context, viewgroup);
                    return true;
                }
            }
        }
        return false;
    }

    public boolean a(Context context, String s, FlurryAdSize flurryadsize, ViewGroup viewgroup, long l)
    {
label0:
        {
label1:
            {
                if (e(s))
                {
                    break label0;
                }
                if (b() && !c())
                {
                    ja.a(3, a, "getAd:no ads in cache, starting AsyncTask");
                    bx bx1 = null;
                    if (0L == l)
                    {
                        bx1 = new bx(this, context, s, viewgroup);
                    }
                    flurryadsize = a(s, viewgroup, false, flurryadsize, ((jf) (bx1)));
                    if (l <= 0L)
                    {
                        break label1;
                    }
                    boolean flag;
                    try
                    {
                        flurryadsize.a(l, TimeUnit.MILLISECONDS);
                        if (!e(s))
                        {
                            break label1;
                        }
                        ja.a(3, a, "getAd:cache has ads now, rendering");
                        flag = b(context, s, viewgroup);
                    }
                    // Misplaced declaration of an exception variable
                    catch (Context context)
                    {
                        ja.a(3, a, "AsyncTask timeout InterruptedException");
                        context.printStackTrace();
                        return false;
                    }
                    // Misplaced declaration of an exception variable
                    catch (Context context)
                    {
                        ja.a(3, a, "AsyncTask timeout ExecutionException");
                        context.printStackTrace();
                        return false;
                    }
                    // Misplaced declaration of an exception variable
                    catch (Context context)
                    {
                        ja.a(3, a, "getAd:AsyncAdTask timeout TimeoutException. No ads retrieved within the timeout");
                        return false;
                    }
                    return flag;
                }
                if (!b())
                {
                    context = d.K();
                    if (context != null)
                    {
                        context.spaceDidFailToReceiveAd(s.toString());
                    }
                }
            }
            return false;
        }
        if (!c())
        {
            return b(context, s, viewgroup);
        } else
        {
            return false;
        }
    }

    public boolean a(String s, FlurryAdSize flurryadsize, long l)
    {
        boolean flag = false;
        if (!e(s)) goto _L2; else goto _L1
_L1:
        flag = true;
_L4:
        return flag;
_L2:
        ja.a(3, a, "isAdAvailable: no ads in cache, starting AsyncTask");
        flurryadsize = a(s, ((ViewGroup) (null)), false, flurryadsize, ((jf) (null)));
        flurryadsize.a(l, TimeUnit.MILLISECONDS);
        if (!e(s)) goto _L4; else goto _L3
_L3:
        ja.a(3, a, "getAd:cache has ads now, rendering");
        return true;
        s;
        ja.a(3, a, "AsyncTask timeout InterruptedException");
        s.printStackTrace();
        return false;
        s;
        ja.a(3, a, "AsyncTask timeout ExecutionException");
        s.printStackTrace();
        return false;
        s;
        ja.a(3, a, "isAdAvailable:AsyncAdTask timeout TimeoutException. No ads retrieved within the timeout");
        return false;
    }

    boolean b()
    {
        return jc.a().c();
    }

    boolean b(Context context, String s)
    {
        AdUnit adunit = g(s);
        if (adunit == null)
        {
            d.F();
            context = d.K();
            if (context != null)
            {
                context.spaceDidFailToReceiveAd(s.toString());
            }
            return false;
        }
        d.J();
        a(s, d.a(context, adunit));
        context = d.K();
        if (context != null)
        {
            context.spaceDidReceiveAd(s.toString());
        }
        return true;
    }

    boolean b(Context context, String s, ViewGroup viewgroup)
    {
        if (!b(context, s))
        {
            return false;
        } else
        {
            a(context, s, viewgroup);
            return true;
        }
    }

    public boolean b(String s)
    {
        return b.d(s);
    }

    cl c(String s)
    {
        return b.b(s);
    }

    public boolean c()
    {
        return FlurryAdModule.e();
    }

    void d(String s)
    {
        b.c(s);
    }

    boolean e(String s)
    {
        return c.d(s);
    }

    public void f(String s)
    {
        c.a(s, c.e(s));
    }

    AdUnit g(String s)
    {
        return c.c(s);
    }

    public void h(String s)
    {
        c.a(s);
        ja.a(3, a, "fetchAdTaskExecute :setting cache request limit count");
    }

}
