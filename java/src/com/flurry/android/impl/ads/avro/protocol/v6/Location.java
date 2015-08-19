// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads.avro.protocol.v6;

import com.flurry.android.monolithic.sdk.impl.jg;
import com.flurry.android.monolithic.sdk.impl.ji;
import com.flurry.android.monolithic.sdk.impl.ke;
import com.flurry.android.monolithic.sdk.impl.nt;
import com.flurry.android.monolithic.sdk.impl.nu;

public class Location extends nu
    implements nt
{

    public static final ji SCHEMA$ = (new ke()).a("{\"type\":\"record\",\"name\":\"Location\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v6\",\"fields\":[{\"name\":\"lat\",\"type\":\"float\",\"default\":0.0},{\"name\":\"lon\",\"type\":\"float\",\"default\":0.0}]}");
    public float a;
    public float b;

    public Location()
    {
    }

    public static Builder b()
    {
        return new Builder(null);
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
            return Float.valueOf(a);

        case 1: // '\001'
            return Float.valueOf(b);
        }
    }

    public void a(int i, Object obj)
    {
        switch (i)
        {
        default:
            throw new jg("Bad index");

        case 0: // '\0'
            a = ((Float)obj).floatValue();
            return;

        case 1: // '\001'
            b = ((Float)obj).floatValue();
            break;
        }
    }


    private class Builder extends nv
    {

        private float a;
        private float b;

        public Builder a(float f)
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

        public Builder b(float f)
        {
            a(b()[1], Float.valueOf(f));
            b = f;
            c()[1] = true;
            return this;
        }

        private Builder()
        {
            super(Location.SCHEMA$);
        }

        Builder(_cls1 _pcls1)
        {
            this();
        }
    }

}
