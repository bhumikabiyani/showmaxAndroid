// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads.avro.protocol.v6;

import com.flurry.android.monolithic.sdk.impl.jg;
import com.flurry.android.monolithic.sdk.impl.nv;

// Referenced classes of package com.flurry.android.impl.ads.avro.protocol.v6:
//            Location

public class <init> extends nv
{

    private float a;
    private float b;

    public <init> a(float f)
    {
        a(b()[0], Float.valueOf(f));
        a = f;
        c()[0] = true;
        return this;
    }

    public Location a()
    {
        Location location = new Location();
        if (!c()[0]) goto _L2; else goto _L1
_L1:
        float f = a;
_L3:
        location.a = f;
        if (!c()[1])
        {
            break MISSING_BLOCK_LABEL_68;
        }
        f = b;
_L4:
        location.b = f;
        return location;
_L2:
        try
        {
            f = ((Float)a(b()[0])).floatValue();
        }
        catch (Exception exception)
        {
            throw new jg(exception);
        }
          goto _L3
        f = ((Float)a(b()[1])).floatValue();
          goto _L4
    }

    public b b(float f)
    {
        a(b()[1], Float.valueOf(f));
        b = f;
        c()[1] = true;
        return this;
    }

    private ()
    {
        super(Location.SCHEMA$);
    }

    ( )
    {
        this();
    }
}
