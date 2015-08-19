// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.net.InetAddress;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abq, oq, or, rx, 
//            ru

public class abi extends abq
{

    public static final abi a = new abi();

    public abi()
    {
        super(java/net/InetAddress);
    }

    public volatile void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((InetAddress)obj, or1, ru);
    }

    public volatile void a(Object obj, or or1, ru ru, rx rx1)
        throws IOException, oq
    {
        a((InetAddress)obj, or1, ru, rx1);
    }

    public void a(InetAddress inetaddress, or or1, ru ru)
        throws IOException, oq
    {
        ru = inetaddress.toString().trim();
        int i = ru.indexOf('/');
        inetaddress = ru;
        if (i >= 0)
        {
            if (i == 0)
            {
                inetaddress = ru.substring(1);
            } else
            {
                inetaddress = ru.substring(0, i);
            }
        }
        or1.b(inetaddress);
    }

    public void a(InetAddress inetaddress, or or1, ru ru, rx rx1)
        throws IOException, oq
    {
        rx1.a(inetaddress, or1, java/net/InetAddress);
        a(inetaddress, or1, ru);
        rx1.d(inetaddress, or1);
    }

}
