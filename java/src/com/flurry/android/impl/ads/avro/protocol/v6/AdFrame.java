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

// Referenced classes of package com.flurry.android.impl.ads.avro.protocol.v6:
//            AdSpaceLayout

public class AdFrame extends nu
    implements nt
{

    public static final ji SCHEMA$ = (new ke()).a("{\"type\":\"record\",\"name\":\"AdFrame\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v6\",\"fields\":[{\"name\":\"binding\",\"type\":\"int\"},{\"name\":\"display\",\"type\":\"string\"},{\"name\":\"content\",\"type\":\"string\"},{\"name\":\"adSpaceLayout\",\"type\":{\"type\":\"record\",\"name\":\"AdSpaceLayout\",\"fields\":[{\"name\":\"adWidth\",\"type\":\"int\"},{\"name\":\"adHeight\",\"type\":\"int\"},{\"name\":\"fix\",\"type\":\"string\"},{\"name\":\"format\",\"type\":\"string\"},{\"name\":\"alignment\",\"type\":\"string\"}]}},{\"name\":\"callbacks\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"Callback\",\"fields\":[{\"name\":\"event\",\"type\":\"string\"},{\"name\":\"actions\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}}},{\"name\":\"adGuid\",\"type\":\"string\"}]}");
    public int a;
    public CharSequence b;
    public CharSequence c;
    public AdSpaceLayout d;
    public List e;
    public CharSequence f;

    public AdFrame()
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
            return b;

        case 2: // '\002'
            return c;

        case 3: // '\003'
            return d;

        case 4: // '\004'
            return e;

        case 5: // '\005'
            return f;
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
            b = (CharSequence)obj;
            return;

        case 2: // '\002'
            c = (CharSequence)obj;
            return;

        case 3: // '\003'
            d = (AdSpaceLayout)obj;
            return;

        case 4: // '\004'
            e = (List)obj;
            return;

        case 5: // '\005'
            f = (CharSequence)obj;
            break;
        }
    }

    public Integer b()
    {
        return Integer.valueOf(a);
    }

    public CharSequence c()
    {
        return b;
    }

    public CharSequence d()
    {
        return c;
    }

    public AdSpaceLayout e()
    {
        return d;
    }

    public List f()
    {
        return e;
    }

    public CharSequence g()
    {
        return f;
    }

}
