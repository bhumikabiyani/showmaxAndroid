// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdFrame;
import com.flurry.android.impl.ads.avro.protocol.v6.AdSpaceLayout;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cl, ja, aj, ak, 
//            ah, ai, al, an, 
//            ac

public final class af extends cl
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/af.getSimpleName();
    private static final Map b = d();
    private final ac c;

    public af(ac ac1, AdUnit adunit)
    {
        super(adunit);
        c = ac1;
    }

    private int a(ViewGroup viewgroup)
    {
        int i = viewgroup.getChildCount();
        if (b() == null || b().d().size() < 1)
        {
            return i;
        }
        viewgroup = ((AdFrame)b().d().get(0)).e();
        if (viewgroup != null)
        {
            viewgroup = viewgroup.f().toString().split("-");
            if (viewgroup.length == 2 && "t".equals(viewgroup[0]))
            {
                return 0;
            }
        }
        return i;
    }

    private android.view.ViewGroup.LayoutParams a(ViewGroup viewgroup, an an1)
    {
        if (b() == null || b().d().size() < 1)
        {
            an1 = null;
        } else
        {
            an1 = ((AdFrame)b().d().get(0)).e();
            if (an1 == null)
            {
                return null;
            }
            Object obj = b(viewgroup);
            if (obj == null)
            {
                ja.a(5, a, (new StringBuilder()).append("Ad space layout and alignment from the server is being ignored for ViewGroup subclass ").append(viewgroup.getClass().getSimpleName()).toString());
                return null;
            }
            obj = ((aj) (obj)).a(an1);
            an1 = ((an) (obj));
            if (obj == null)
            {
                ja.a(6, a, (new StringBuilder()).append("Ad space layout and alignment from the server is being ignored for ViewGroup subclass ").append(viewgroup.getClass().getSimpleName()).toString());
                return ((android.view.ViewGroup.LayoutParams) (obj));
            }
        }
        return an1;
    }

    static String a()
    {
        return a;
    }

    private static aj b(ViewGroup viewgroup)
    {
        return (aj)b.get(viewgroup.getClass());
    }

    private static Map d()
    {
        HashMap hashmap = new HashMap();
        hashmap.put(android/widget/LinearLayout, new ak());
        hashmap.put(android/widget/AbsoluteLayout, new ah());
        hashmap.put(android/widget/FrameLayout, new ai());
        hashmap.put(android/widget/RelativeLayout, new al());
        return Collections.unmodifiableMap(hashmap);
    }

    public void a(Context context, ViewGroup viewgroup)
    {
        ja.a(3, a, (new StringBuilder()).append("render(").append(context).append(", ").append(viewgroup).append(")").toString());
        if (c == null || context == null || viewgroup == null)
        {
            ja.a(6, a, (new StringBuilder()).append("failed to render banner ad for bannerView = ").append(c).append(" for context = ").append(context).append(" for viewGroup = ").append(viewgroup).toString());
            return;
        }
        context = FlurryAdModule.getInstance().a(context, viewgroup, c());
        if (context == null)
        {
            ja.a(6, a, (new StringBuilder()).append("failed to render banner ad for holder = ").append(context).append(" for adSpaceName = ").append(c()).toString());
            return;
        }
        Object obj = (ViewGroup)context.getParent();
        if (obj != null)
        {
            ((ViewGroup) (obj)).removeView(context);
        }
        context.b();
        context.removeAllViews();
        obj = (ViewGroup)c.getParent();
        if (obj != null)
        {
            ((ViewGroup) (obj)).removeView(c);
        }
        context.addView(c, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        c.initLayout();
        obj = a(viewgroup, ((an) (context)));
        if (obj != null)
        {
            context.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
            ja.a(3, a, (new StringBuilder()).append("banner ad holder layout params = ").append(obj.getClass().getName()).append(" {width = ").append(((android.view.ViewGroup.LayoutParams) (obj)).width).append(", height = ").append(((android.view.ViewGroup.LayoutParams) (obj)).height).append("} for banner ad with adSpaceName = ").append(c()).toString());
        }
        viewgroup.addView(context, a(viewgroup));
    }

}
