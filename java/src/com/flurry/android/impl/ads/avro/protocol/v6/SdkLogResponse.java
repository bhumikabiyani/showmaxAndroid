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

public class SdkLogResponse extends nu
    implements nt
{

    public static final ji SCHEMA$ = (new ke()).a("{\"type\":\"record\",\"name\":\"SdkLogResponse\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v6\",\"fields\":[{\"name\":\"result\",\"type\":\"string\"},{\"name\":\"errors\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}");
    public CharSequence a;
    public List b;

    public SdkLogResponse()
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
            return a;

        case 1: // '\001'
            return b;
        }
    }

    public void a(int i, Object obj)
    {
        switch (i)
        {
        default:
            throw new jg("Bad index");

        case 0: // '\0'
            a = (CharSequence)obj;
            return;

        case 1: // '\001'
            b = (List)obj;
            break;
        }
    }

    public CharSequence b()
    {
        return a;
    }

    public List c()
    {
        return b;
    }

}
