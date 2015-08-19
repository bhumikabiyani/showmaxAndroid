// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.ads.avro.protocol.v6;

import com.flurry.android.monolithic.sdk.impl.jg;
import com.flurry.android.monolithic.sdk.impl.ji;
import com.flurry.android.monolithic.sdk.impl.ke;
import com.flurry.android.monolithic.sdk.impl.nt;
import com.flurry.android.monolithic.sdk.impl.nu;

public class FrequencyCapInfo extends nu
    implements nt
{

    public static final ji SCHEMA$ = (new ke()).a("{\"type\":\"record\",\"name\":\"FrequencyCapInfo\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v6\",\"fields\":[{\"name\":\"idHash\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"serveTime\",\"type\":\"long\"},{\"name\":\"expirationTime\",\"type\":\"long\"},{\"name\":\"views\",\"type\":\"int\"},{\"name\":\"newCap\",\"type\":\"int\"},{\"name\":\"previousCap\",\"type\":\"int\"},{\"name\":\"previousCapType\",\"type\":\"int\"}]}");
    public CharSequence a;
    public long b;
    public long c;
    public int d;
    public int e;
    public int f;
    public int g;

    public FrequencyCapInfo()
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
            return a;

        case 1: // '\001'
            return Long.valueOf(b);

        case 2: // '\002'
            return Long.valueOf(c);

        case 3: // '\003'
            return Integer.valueOf(d);

        case 4: // '\004'
            return Integer.valueOf(e);

        case 5: // '\005'
            return Integer.valueOf(f);

        case 6: // '\006'
            return Integer.valueOf(g);
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
            b = ((Long)obj).longValue();
            return;

        case 2: // '\002'
            c = ((Long)obj).longValue();
            return;

        case 3: // '\003'
            d = ((Integer)obj).intValue();
            return;

        case 4: // '\004'
            e = ((Integer)obj).intValue();
            return;

        case 5: // '\005'
            f = ((Integer)obj).intValue();
            return;

        case 6: // '\006'
            g = ((Integer)obj).intValue();
            break;
        }
    }


    private class Builder extends nv
    {

        private CharSequence a;
        private long b;
        private long c;
        private int d;
        private int e;
        private int f;
        private int g;

        public Builder a(int i)
        {
            a(b()[3], Integer.valueOf(i));
            d = i;
            c()[3] = true;
            return this;
        }

        public Builder a(long l)
        {
            a(b()[1], Long.valueOf(l));
            b = l;
            c()[1] = true;
            return this;
        }

        public Builder a(CharSequence charsequence)
        {
            a(b()[0], charsequence);
            a = charsequence;
            c()[0] = true;
            return this;
        }

        public FrequencyCapInfo a()
        {
            FrequencyCapInfo frequencycapinfo = new FrequencyCapInfo();
            if (!c()[0]) goto _L2; else goto _L1
_L1:
            CharSequence charsequence = a;
_L13:
            frequencycapinfo.a = charsequence;
            if (!c()[1]) goto _L4; else goto _L3
_L3:
            long l = b;
_L14:
            frequencycapinfo.b = l;
            if (!c()[2]) goto _L6; else goto _L5
_L5:
            l = c;
_L15:
            frequencycapinfo.c = l;
            if (!c()[3]) goto _L8; else goto _L7
_L7:
            int i = d;
_L16:
            frequencycapinfo.d = i;
            if (!c()[4]) goto _L10; else goto _L9
_L9:
            i = e;
_L17:
            frequencycapinfo.e = i;
            if (!c()[5]) goto _L12; else goto _L11
_L11:
            i = f;
_L18:
            frequencycapinfo.f = i;
            if (!c()[6])
            {
                break MISSING_BLOCK_LABEL_267;
            }
            i = g;
_L19:
            frequencycapinfo.g = i;
            return frequencycapinfo;
_L2:
            try
            {
                charsequence = (CharSequence)a(b()[0]);
            }
            catch (Exception exception)
            {
                throw new jg(exception);
            }
              goto _L13
_L4:
            l = ((Long)a(b()[1])).longValue();
              goto _L14
_L6:
            l = ((Long)a(b()[2])).longValue();
              goto _L15
_L8:
            i = ((Integer)a(b()[3])).intValue();
              goto _L16
_L10:
            i = ((Integer)a(b()[4])).intValue();
              goto _L17
_L12:
            i = ((Integer)a(b()[5])).intValue();
              goto _L18
            i = ((Integer)a(b()[6])).intValue();
              goto _L19
        }

        public Builder b(int i)
        {
            a(b()[4], Integer.valueOf(i));
            e = i;
            c()[4] = true;
            return this;
        }

        public Builder b(long l)
        {
            a(b()[2], Long.valueOf(l));
            c = l;
            c()[2] = true;
            return this;
        }

        public Builder c(int i)
        {
            a(b()[5], Integer.valueOf(i));
            f = i;
            c()[5] = true;
            return this;
        }

        public Builder d(int i)
        {
            a(b()[6], Integer.valueOf(i));
            g = i;
            c()[6] = true;
            return this;
        }

        private Builder()
        {
            super(FrequencyCapInfo.SCHEMA$);
        }

        Builder(_cls1 _pcls1)
        {
            this();
        }
    }

}
