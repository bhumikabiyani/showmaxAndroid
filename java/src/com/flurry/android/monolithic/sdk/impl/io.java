// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            in

class io
    implements LocationListener
{

    final in a;

    public io(in in1)
    {
        a = in1;
        super();
    }

    public void onLocationChanged(Location location)
    {
        if (location != null)
        {
            in.a(a, location);
        }
    }

    public void onProviderDisabled(String s)
    {
    }

    public void onProviderEnabled(String s)
    {
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
    }
}
