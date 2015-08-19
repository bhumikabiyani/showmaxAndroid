// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads.avro.protocol.v6;

import com.flurry.android.monolithic.sdk.impl.jg;
import com.flurry.android.monolithic.sdk.impl.ji;
import com.flurry.android.monolithic.sdk.impl.ke;
import com.flurry.android.monolithic.sdk.impl.nt;
import com.flurry.android.monolithic.sdk.impl.nu;
import java.util.List;

public class AdUnit extends nu
    implements nt
{

    public static final ji SCHEMA$ = (new ke()).a("{\"type\":\"record\",\"name\":\"AdUnit\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v6\",\"fields\":[{\"name\":\"adSpace\",\"type\":\"string\"},{\"name\":\"expiration\",\"type\":\"long\"},{\"name\":\"adFrames\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"AdFrame\",\"fields\":[{\"name\":\"binding\",\"type\":\"int\"},{\"name\":\"display\",\"type\":\"string\"},{\"name\":\"content\",\"type\":\"string\"},{\"name\":\"adSpaceLayout\",\"type\":{\"type\":\"record\",\"name\":\"AdSpaceLayout\",\"fields\":[{\"name\":\"adWidth\",\"type\":\"int\"},{\"name\":\"adHeight\",\"type\":\"int\"},{\"name\":\"fix\",\"type\":\"string\"},{\"name\":\"format\",\"type\":\"string\"},{\"name\":\"alignment\",\"type\":\"string\"}]}},{\"name\":\"callbacks\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"Callback\",\"fields\":[{\"name\":\"event\",\"type\":\"string\"},{\"name\":\"actions\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}}},{\"name\":\"adGuid\",\"type\":\"string\"}]}}},{\"name\":\"combinable\",\"type\":\"int\",\"default\":0},{\"name\":\"groupId\",\"type\":\"string\"},{\"name\":\"idHash\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"serveTime\",\"type\":\"long\"},{\"name\":\"newCap\",\"type\":\"int\",\"default\":-1},{\"name\":\"previousCap\",\"type\":\"int\",\"default\":-1},{\"name\":\"previousCapType\",\"type\":\"int\",\"default\":0},{\"name\":\"expirationTime\",\"type\":\"long\"},{\"name\":\"price\",\"type\":\"long\",\"default\":0},{\"name\":\"adomain\",\"type\":\"string\",\"default\":\"null\"}]}");
    public CharSequence a;
    public long b;
    public List c;
    public int d;
    public CharSequence e;
    public CharSequence f;
    public long g;
    public int h;
    public int i;
    public int j;
    public long k;
    public long l;
    public CharSequence m;

    public AdUnit()
    {
    }

    public ji a()
    {
        return SCHEMA$;
    }

    public Object a(int i1)
    {
        switch (i1)
        {
        default:
            throw new jg("Bad index");

        case 0: // '\0'
            return a;

        case 1: // '\001'
            return Long.valueOf(b);

        case 2: // '\002'
            return c;

        case 3: // '\003'
            return Integer.valueOf(d);

        case 4: // '\004'
            return e;

        case 5: // '\005'
            return f;

        case 6: // '\006'
            return Long.valueOf(g);

        case 7: // '\007'
            return Integer.valueOf(h);

        case 8: // '\b'
            return Integer.valueOf(i);

        case 9: // '\t'
            return Integer.valueOf(j);

        case 10: // '\n'
            return Long.valueOf(k);

        case 11: // '\013'
            return Long.valueOf(l);

        case 12: // '\f'
            return m;
        }
    }

    public void a(int i1, Object obj)
    {
        switch (i1)
        {
        default:
            throw new jg("Bad index");

        case 0: // '\0'
            a = (CharSequence)obj;
            return;

        case 1: // '\001'
            b = ((Long)obj).longValue();
            return;

        case 2: // '\002'
            c = (List)obj;
            return;

        case 3: // '\003'
            d = ((Integer)obj).intValue();
            return;

        case 4: // '\004'
            e = (CharSequence)obj;
            return;

        case 5: // '\005'
            f = (CharSequence)obj;
            return;

        case 6: // '\006'
            g = ((Long)obj).longValue();
            return;

        case 7: // '\007'
            h = ((Integer)obj).intValue();
            return;

        case 8: // '\b'
            i = ((Integer)obj).intValue();
            return;

        case 9: // '\t'
            j = ((Integer)obj).intValue();
            return;

        case 10: // '\n'
            k = ((Long)obj).longValue();
            return;

        case 11: // '\013'
            l = ((Long)obj).longValue();
            return;

        case 12: // '\f'
            m = (CharSequence)obj;
            break;
        }
    }

    public CharSequence b()
    {
        return a;
    }

    public Long c()
    {
        return Long.valueOf(b);
    }

    public List d()
    {
        return c;
    }

    public Integer e()
    {
        return Integer.valueOf(d);
    }

    public CharSequence f()
    {
        return e;
    }

    public CharSequence g()
    {
        return f;
    }

    public Long h()
    {
        return Long.valueOf(g);
    }

    public Integer i()
    {
        return Integer.valueOf(h);
    }

    public Integer j()
    {
        return Integer.valueOf(i);
    }

    public Integer k()
    {
        return Integer.valueOf(j);
    }

    public Long l()
    {
        return Long.valueOf(k);
    }

}
