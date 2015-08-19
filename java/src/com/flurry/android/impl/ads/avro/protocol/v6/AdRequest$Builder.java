// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads.avro.protocol.v6;

import com.flurry.android.monolithic.sdk.impl.jg;
import com.flurry.android.monolithic.sdk.impl.nv;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.impl.ads.avro.protocol.v6:
//            AdRequest, Location, AdViewContainer, TestAds

public class <init> extends nv
{

    private CharSequence a;
    private CharSequence b;
    private CharSequence c;
    private long d;
    private List e;
    private Location f;
    private boolean g;
    private List h;
    private AdViewContainer i;
    private CharSequence j;
    private CharSequence k;
    private CharSequence l;
    private CharSequence m;
    private TestAds n;
    private Map o;
    private boolean p;
    private boolean q;
    private int r;
    private List s;
    private boolean t;
    private CharSequence u;
    private List v;

    public <init> a(int i1)
    {
        a(b()[17], Integer.valueOf(i1));
        r = i1;
        c()[17] = true;
        return this;
    }

    public c a(long l1)
    {
        a(b()[3], Long.valueOf(l1));
        d = l1;
        c()[3] = true;
        return this;
    }

    public c a(AdViewContainer adviewcontainer)
    {
        a(b()[8], adviewcontainer);
        i = adviewcontainer;
        c()[8] = true;
        return this;
    }

    public c a(Location location)
    {
        a(b()[5], location);
        f = location;
        c()[5] = true;
        return this;
    }

    public c a(CharSequence charsequence)
    {
        a(b()[0], charsequence);
        a = charsequence;
        c()[0] = true;
        return this;
    }

    public c a(List list)
    {
        a(b()[4], list);
        e = list;
        c()[4] = true;
        return this;
    }

    public c a(boolean flag)
    {
        a(b()[6], Boolean.valueOf(flag));
        g = flag;
        c()[6] = true;
        return this;
    }

    public AdRequest a()
    {
        AdRequest adrequest = new AdRequest();
        if (!c()[0]) goto _L2; else goto _L1
_L1:
        Object obj = a;
_L43:
        adrequest.a = ((CharSequence) (obj));
        if (!c()[1]) goto _L4; else goto _L3
_L3:
        obj = b;
_L44:
        adrequest.b = ((CharSequence) (obj));
        if (!c()[2]) goto _L6; else goto _L5
_L5:
        obj = c;
_L45:
        adrequest.c = ((CharSequence) (obj));
        if (!c()[3]) goto _L8; else goto _L7
_L7:
        long l1 = d;
_L46:
        adrequest.d = l1;
        if (!c()[4]) goto _L10; else goto _L9
_L9:
        obj = e;
_L47:
        adrequest.e = ((List) (obj));
        if (!c()[5]) goto _L12; else goto _L11
_L11:
        obj = f;
_L48:
        adrequest.f = ((Location) (obj));
        if (!c()[6]) goto _L14; else goto _L13
_L13:
        boolean flag = g;
_L49:
        adrequest.g = flag;
        if (!c()[7]) goto _L16; else goto _L15
_L15:
        obj = h;
_L50:
        adrequest.h = ((List) (obj));
        if (!c()[8]) goto _L18; else goto _L17
_L17:
        obj = i;
_L51:
        adrequest.i = ((AdViewContainer) (obj));
        if (!c()[9]) goto _L20; else goto _L19
_L19:
        obj = j;
_L52:
        adrequest.j = ((CharSequence) (obj));
        if (!c()[10]) goto _L22; else goto _L21
_L21:
        obj = k;
_L53:
        adrequest.k = ((CharSequence) (obj));
        if (!c()[11]) goto _L24; else goto _L23
_L23:
        obj = l;
_L54:
        adrequest.l = ((CharSequence) (obj));
        if (!c()[12]) goto _L26; else goto _L25
_L25:
        obj = m;
_L55:
        adrequest.m = ((CharSequence) (obj));
        if (!c()[13]) goto _L28; else goto _L27
_L27:
        obj = n;
_L56:
        adrequest.n = ((TestAds) (obj));
        if (!c()[14]) goto _L30; else goto _L29
_L29:
        obj = o;
_L57:
        adrequest.o = ((Map) (obj));
        if (!c()[15]) goto _L32; else goto _L31
_L31:
        flag = p;
_L58:
        adrequest.p = flag;
        if (!c()[16]) goto _L34; else goto _L33
_L33:
        flag = q;
_L59:
        adrequest.q = flag;
        if (!c()[17]) goto _L36; else goto _L35
_L35:
        int i1 = r;
_L60:
        adrequest.r = i1;
        if (!c()[18]) goto _L38; else goto _L37
_L37:
        obj = s;
_L61:
        adrequest.s = ((List) (obj));
        if (!c()[19]) goto _L40; else goto _L39
_L39:
        flag = t;
_L62:
        adrequest.t = flag;
        if (!c()[20]) goto _L42; else goto _L41
_L41:
        obj = u;
_L63:
        adrequest.u = ((CharSequence) (obj));
        if (!c()[21])
        {
            break MISSING_BLOCK_LABEL_849;
        }
        obj = v;
_L64:
        adrequest.v = ((List) (obj));
        return adrequest;
_L2:
        try
        {
            obj = (CharSequence)a(b()[0]);
        }
        catch (Exception exception)
        {
            throw new jg(exception);
        }
          goto _L43
_L4:
        obj = (CharSequence)a(b()[1]);
          goto _L44
_L6:
        obj = (CharSequence)a(b()[2]);
          goto _L45
_L8:
        l1 = ((Long)a(b()[3])).longValue();
          goto _L46
_L10:
        obj = (List)a(b()[4]);
          goto _L47
_L12:
        obj = (Location)a(b()[5]);
          goto _L48
_L14:
        flag = ((Boolean)a(b()[6])).booleanValue();
          goto _L49
_L16:
        obj = (List)a(b()[7]);
          goto _L50
_L18:
        obj = (AdViewContainer)a(b()[8]);
          goto _L51
_L20:
        obj = (CharSequence)a(b()[9]);
          goto _L52
_L22:
        obj = (CharSequence)a(b()[10]);
          goto _L53
_L24:
        obj = (CharSequence)a(b()[11]);
          goto _L54
_L26:
        obj = (CharSequence)a(b()[12]);
          goto _L55
_L28:
        obj = (TestAds)a(b()[13]);
          goto _L56
_L30:
        obj = (Map)a(b()[14]);
          goto _L57
_L32:
        flag = ((Boolean)a(b()[15])).booleanValue();
          goto _L58
_L34:
        flag = ((Boolean)a(b()[16])).booleanValue();
          goto _L59
_L36:
        i1 = ((Integer)a(b()[17])).intValue();
          goto _L60
_L38:
        obj = (List)a(b()[18]);
          goto _L61
_L40:
        flag = ((Boolean)a(b()[19])).booleanValue();
          goto _L62
_L42:
        obj = (CharSequence)a(b()[20]);
          goto _L63
        obj = (List)a(b()[21]);
          goto _L64
    }

    public b b(CharSequence charsequence)
    {
        a(b()[1], charsequence);
        b = charsequence;
        c()[1] = true;
        return this;
    }

    public c b(List list)
    {
        a(b()[7], list);
        h = list;
        c()[7] = true;
        return this;
    }

    public c b(boolean flag)
    {
        a(b()[16], Boolean.valueOf(flag));
        q = flag;
        c()[16] = true;
        return this;
    }

    public c c(CharSequence charsequence)
    {
        a(b()[2], charsequence);
        c = charsequence;
        c()[2] = true;
        return this;
    }

    public c c(List list)
    {
        a(b()[18], list);
        s = list;
        c()[18] = true;
        return this;
    }

    public c d(CharSequence charsequence)
    {
        a(b()[9], charsequence);
        j = charsequence;
        c()[9] = true;
        return this;
    }

    public c d(List list)
    {
        a(b()[21], list);
        v = list;
        c()[21] = true;
        return this;
    }

    public c e(CharSequence charsequence)
    {
        a(b()[10], charsequence);
        k = charsequence;
        c()[10] = true;
        return this;
    }

    public c f(CharSequence charsequence)
    {
        a(b()[11], charsequence);
        l = charsequence;
        c()[11] = true;
        return this;
    }

    public c g(CharSequence charsequence)
    {
        a(b()[12], charsequence);
        m = charsequence;
        c()[12] = true;
        return this;
    }

    public c h(CharSequence charsequence)
    {
        a(b()[20], charsequence);
        u = charsequence;
        c()[20] = true;
        return this;
    }

    private ()
    {
        super(AdRequest.SCHEMA$);
    }

    ( )
    {
        this();
    }
}
