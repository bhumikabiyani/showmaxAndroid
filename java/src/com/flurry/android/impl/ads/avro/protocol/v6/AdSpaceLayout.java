// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads.avro.protocol.v6;

import com.flurry.android.monolithic.sdk.impl.jg;
import com.flurry.android.monolithic.sdk.impl.ji;
import com.flurry.android.monolithic.sdk.impl.ke;
import com.flurry.android.monolithic.sdk.impl.nt;
import com.flurry.android.monolithic.sdk.impl.nu;

public class AdSpaceLayout extends nu
    implements nt
{

    public static final ji SCHEMA$ = (new ke()).a("{\"type\":\"record\",\"name\":\"AdSpaceLayout\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v6\",\"fields\":[{\"name\":\"adWidth\",\"type\":\"int\"},{\"name\":\"adHeight\",\"type\":\"int\"},{\"name\":\"fix\",\"type\":\"string\"},{\"name\":\"format\",\"type\":\"string\"},{\"name\":\"alignment\",\"type\":\"string\"}]}");
    public int a;
    public int b;
    public CharSequence c;
    public CharSequence d;
    public CharSequence e;

    public AdSpaceLayout()
    {
    }

    public ji a()
    {
        return SCHEMA$;
    }

    public Object a(int i)
    {
        switch (i)
        {
        default:
            throw new jg("Bad index");

        case 0: // '\0'
            return Integer.valueOf(a);

        case 1: // '\001'
            return Integer.valueOf(b);

        case 2: // '\002'
            return c;

        case 3: // '\003'
            return d;

        case 4: // '\004'
            return e;
        }
    }

    public void a(int i, Object obj)
    {
        switch (i)
        {
        default:
            throw new jg("Bad index");

        case 0: // '\0'
            a = ((Integer)obj).intValue();
            return;

        case 1: // '\001'
            b = ((Integer)obj).intValue();
            return;

        case 2: // '\002'
            c = (CharSequence)obj;
            return;

        case 3: // '\003'
            d = (CharSequence)obj;
            return;

        case 4: // '\004'
            e = (CharSequence)obj;
            break;
        }
    }

    public Integer b()
    {
        return Integer.valueOf(a);
    }

    public Integer c()
    {
        return Integer.valueOf(b);
    }

    public CharSequence d()
    {
        return c;
    }

    public CharSequence e()
    {
        return d;
    }

    public CharSequence f()
    {
        return e;
    }

}
