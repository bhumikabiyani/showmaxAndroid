// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            eg, ie, je, ja, 
//            m, i

public class ck
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/ck.getSimpleName();
    private final FlurryAdModule b;

    public ck(FlurryAdModule flurryadmodule)
    {
        b = flurryadmodule;
    }

    private boolean a(String s, String s1)
    {
        return s1.equals((new StringBuilder()).append("%{").append(s).append("}").toString());
    }

    public String a(m m1, AdUnit adunit, i i, String s, String s1)
    {
        if (a("fids", s1))
        {
            m1 = new StringBuilder();
            m1.append(eg.i()).append(":").append(b.l());
            adunit = b.m();
            if (adunit != null)
            {
                for (adunit = adunit.entrySet().iterator(); adunit.hasNext();)
                {
                    i = (java.util.Map.Entry)adunit.next();
                    m1.append(",").append(((ie)i.getKey()).c).append(":");
                    if (((ie)i.getKey()).d)
                    {
                        m1.append(((ByteBuffer)i.getValue()).array());
                    } else
                    {
                        m1.append(je.a(((ByteBuffer)i.getValue()).array()));
                    }
                }

            }
            ja.a(3, a, (new StringBuilder()).append("Replacing param fids with: ").append(m1.toString()).toString());
            adunit = s.replace(s1, je.b(m1.toString()));
        } else
        {
            if (a("sid", s1))
            {
                m1 = String.valueOf(b.d());
                ja.a(3, a, (new StringBuilder()).append("Replacing param sid with: ").append(m1).toString());
                return s.replace(s1, je.b(m1));
            }
            if (a("lid", s1))
            {
                m1 = String.valueOf(m1.a());
                ja.a(3, a, (new StringBuilder()).append("Replacing param lid with: ").append(m1).toString());
                return s.replace(s1, je.b(m1));
            }
            if (a("guid", s1))
            {
                m1 = m1.b();
                ja.a(3, a, (new StringBuilder()).append("Replacing param guid with: ").append(m1).toString());
                return s.replace(s1, je.b(m1));
            }
            if (a("ats", s1))
            {
                m1 = String.valueOf(System.currentTimeMillis());
                ja.a(3, a, (new StringBuilder()).append("Replacing param ats with: ").append(m1).toString());
                return s.replace(s1, je.b(m1));
            }
            if (a("apik", s1))
            {
                m1 = b.f();
                ja.a(3, a, (new StringBuilder()).append("Replacing param apik with: ").append(m1).toString());
                return s.replace(s1, je.b(m1));
            }
            if (a("hid", s1))
            {
                m1 = adunit.b().toString();
                ja.a(3, a, (new StringBuilder()).append("Replacing param hid with: ").append(m1).toString());
                return s.replace(s1, je.b(m1));
            }
            if (a("eso", s1))
            {
                m1 = Long.toString(System.currentTimeMillis() - b.d());
                ja.a(3, a, (new StringBuilder()).append("Replacing param eso with: ").append(m1).toString());
                return s.replace(s1, je.b(m1));
            }
            if (a("uc", s1))
            {
                adunit = b.v().entrySet().iterator();
                for (m1 = ""; adunit.hasNext(); m1 = (new StringBuilder()).append(m1).append("c_").append(je.b((String)i.getKey())).append("=").append(je.b((String)i.getValue())).append("&").toString())
                {
                    i = (java.util.Map.Entry)adunit.next();
                }

                ja.a(3, a, (new StringBuilder()).append("Replacing param uc with: ").append(m1).toString());
                i = s.replace(s1, m1);
                adunit = i;
                if (m1.equals(""))
                {
                    adunit = i;
                    if (i.length() > 0)
                    {
                        return i.substring(0, i.length() - 1);
                    }
                }
            } else
            {
                ja.a(3, a, (new StringBuilder()).append("Unknown param: ").append(s1).toString());
                return s.replace(s1, "");
            }
        }
        return adunit;
    }

}
