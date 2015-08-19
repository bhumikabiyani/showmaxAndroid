// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads.avro.protocol.v6;

import com.flurry.android.monolithic.sdk.impl.jg;
import com.flurry.android.monolithic.sdk.impl.ji;
import com.flurry.android.monolithic.sdk.impl.ke;
import com.flurry.android.monolithic.sdk.impl.nt;
import com.flurry.android.monolithic.sdk.impl.nu;

public class AdViewContainer extends nu
    implements nt
{

    public static final ji SCHEMA$ = (new ke()).a("{\"type\":\"record\",\"name\":\"AdViewContainer\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v6\",\"fields\":[{\"name\":\"viewWidth\",\"type\":\"int\",\"default\":0},{\"name\":\"viewHeight\",\"type\":\"int\",\"default\":0},{\"name\":\"screenWidth\",\"type\":\"int\",\"default\":0},{\"name\":\"screenHeight\",\"type\":\"int\",\"default\":0},{\"name\":\"density\",\"type\":\"float\",\"default\":1.0}]}");
    public int a;
    public int b;
    public int c;
    public int d;
    public float e;

    public AdViewContainer()
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
            return Integer.valueOf(a);

        case 1: // '\001'
            return Integer.valueOf(b);

        case 2: // '\002'
            return Integer.valueOf(c);

        case 3: // '\003'
            return Integer.valueOf(d);

        case 4: // '\004'
            return Float.valueOf(e);
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
            c = ((Integer)obj).intValue();
            return;

        case 3: // '\003'
            d = ((Integer)obj).intValue();
            return;

        case 4: // '\004'
            e = ((Float)obj).floatValue();
            break;
        }
    }


    private class Builder extends nv
    {

        private int a;
        private int b;
        private int c;
        private int d;
        private float e;

        public Builder a(float f)
        {
            a(b()[4], Float.valueOf(f));
            e = f;
            c()[4] = true;
            return this;
        }

        public Builder a(int i)
        {
            a(b()[0], Integer.valueOf(i));
            a = i;
            c()[0] = true;
            return this;
        }

        public AdViewContainer a()
        {
            AdViewContainer adviewcontainer = new AdViewContainer();
            if (!c()[0]) goto _L2; else goto _L1
_L1:
            int i = a;
_L9:
            adviewcontainer.a = i;
            if (!c()[1]) goto _L4; else goto _L3
_L3:
            i = b;
_L10:
            adviewcontainer.b = i;
            if (!c()[2]) goto _L6; else goto _L5
_L5:
            i = c;
_L11:
            adviewcontainer.c = i;
            if (!c()[3]) goto _L8; else goto _L7
_L7:
            i = d;
_L12:
            float f;
            adviewcontainer.d = i;
            if (!c()[4])
            {
                break MISSING_BLOCK_LABEL_185;
            }
            f = e;
_L13:
            adviewcontainer.e = f;
            return adviewcontainer;
_L2:
            try
            {
                i = ((Integer)a(b()[0])).intValue();
            }
            catch (Exception exception)
            {
                throw new jg(exception);
            }
              goto _L9
_L4:
            i = ((Integer)a(b()[1])).intValue();
              goto _L10
_L6:
            i = ((Integer)a(b()[2])).intValue();
              goto _L11
_L8:
            i = ((Integer)a(b()[3])).intValue();
              goto _L12
            f = ((Float)a(b()[4])).floatValue();
              goto _L13
        }

        public Builder b(int i)
        {
            a(b()[1], Integer.valueOf(i));
            b = i;
            c()[1] = true;
            return this;
        }

        public Builder c(int i)
        {
            a(b()[2], Integer.valueOf(i));
            c = i;
            c()[2] = true;
            return this;
        }

        public Builder d(int i)
        {
            a(b()[3], Integer.valueOf(i));
            d = i;
            c()[3] = true;
            return this;
        }

        private Builder()
        {
            super(AdViewContainer.SCHEMA$);
        }

        Builder(_cls1 _pcls1)
        {
            this();
        }
    }

}
