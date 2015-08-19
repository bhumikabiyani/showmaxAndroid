// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Collection;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            yj, yx, yk, yo, 
//            yr, ym, yl, yq, 
//            ys, yn, yt, rf, 
//            yu, za, yi, qk, 
//            afm, qc, rw, rq, 
//            rx

public class yw
    implements yj
{

    protected com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.Id a;
    protected com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As b;
    protected String c;
    protected Class d;
    protected yi e;

    public yw()
    {
    }

    public static yw b()
    {
        return (new yw()).b(com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.Id.NONE, null);
    }

    public rw a(qk qk, afm afm, Collection collection, qc qc)
    {
        if (a == com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.Id.NONE)
        {
            return null;
        }
        qk = a(((rf) (qk)), afm, collection, false, true);
        switch (yx.a[b.ordinal()])
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Do not know how to construct standard type serializer for inclusion type: ").append(b).toString());

        case 1: // '\001'
            return new yk(afm, qk, qc, d);

        case 2: // '\002'
            return new yo(afm, qk, qc, d, c);

        case 3: // '\003'
            return new yr(afm, qk, qc, d);

        case 4: // '\004'
            return new ym(afm, qk, qc, d, c);
        }
    }

    public rx a(rq rq, afm afm, Collection collection, qc qc)
    {
        if (a == com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.Id.NONE)
        {
            return null;
        }
        rq = a(((rf) (rq)), afm, collection, true, false);
        switch (yx.a[b.ordinal()])
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Do not know how to construct standard type serializer for inclusion type: ").append(b).toString());

        case 1: // '\001'
            return new yl(rq, qc);

        case 2: // '\002'
            return new yq(rq, qc, c);

        case 3: // '\003'
            return new ys(rq, qc);

        case 4: // '\004'
            return new yn(rq, qc, c);
        }
    }

    protected yi a(rf rf1, afm afm, Collection collection, boolean flag, boolean flag1)
    {
        if (e != null)
        {
            return e;
        }
        if (a == null)
        {
            throw new IllegalStateException("Can not build, 'init()' not yet called");
        }
        switch (yx.b[a.ordinal()])
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("Do not know how to construct standard type id resolver for idType: ").append(a).toString());

        case 1: // '\001'
            return new yt(afm, rf1.m());

        case 2: // '\002'
            return new yu(afm, rf1.m());

        case 3: // '\003'
            return za.a(rf1, afm, collection, flag, flag1);

        case 4: // '\004'
            return null;
        }
    }

    public yj a(com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As as)
    {
        return b(as);
    }

    public yj a(com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.Id id, yi yi)
    {
        return b(id, yi);
    }

    public yj a(Class class1)
    {
        return b(class1);
    }

    public yj a(String s)
    {
        return b(s);
    }

    public Class a()
    {
        return d;
    }

    public yw b(com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As as)
    {
        if (as == null)
        {
            throw new IllegalArgumentException("includeAs can not be null");
        } else
        {
            b = as;
            return this;
        }
    }

    public yw b(com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.Id id, yi yi)
    {
        if (id == null)
        {
            throw new IllegalArgumentException("idType can not be null");
        } else
        {
            a = id;
            e = yi;
            c = id.getDefaultPropertyName();
            return this;
        }
    }

    public yw b(Class class1)
    {
        d = class1;
        return this;
    }

    public yw b(String s)
    {
        String s1;
label0:
        {
            if (s != null)
            {
                s1 = s;
                if (s.length() != 0)
                {
                    break label0;
                }
            }
            s1 = a.getDefaultPropertyName();
        }
        c = s1;
        return this;
    }
}
