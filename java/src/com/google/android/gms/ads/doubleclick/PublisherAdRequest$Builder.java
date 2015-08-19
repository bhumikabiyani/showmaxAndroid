// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.doubleclick;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.common.internal.zzx;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.google.android.gms.ads.doubleclick:
//            PublisherAdRequest

public static final class 
{

    private final com.google.android.gms.internal.uilder.zzlh zzlh = new com.google.android.gms.internal.uilder.zzlh();

    static com.google.android.gms.internal.uilder zza( )
    {
        return .zzlh;
    }

    public zzlh addCategoryExclusion(String s)
    {
        zzlh.zzlh(s);
        return this;
    }

    public zzlh addCustomEventExtrasBundle(Class class1, Bundle bundle)
    {
        zzlh.zzlh(class1, bundle);
        return this;
    }

    public zzlh addCustomTargeting(String s, String s1)
    {
        zzlh.zzlh(s, s1);
        return this;
    }

    public zzlh addCustomTargeting(String s, List list)
    {
        if (list != null)
        {
            zzlh.zzlh(s, zzv.zzbm(",").zza(list));
        }
        return this;
    }

    public zzlh addKeyword(String s)
    {
        zzlh.zzlh(s);
        return this;
    }

    public zzlh addNetworkExtras(NetworkExtras networkextras)
    {
        zzlh.zzlh(networkextras);
        return this;
    }

    public zzlh addNetworkExtrasBundle(Class class1, Bundle bundle)
    {
        zzlh.zzlh(class1, bundle);
        return this;
    }

    public zzlh addTestDevice(String s)
    {
        zzlh.zzlh(s);
        return this;
    }

    public PublisherAdRequest build()
    {
        return new PublisherAdRequest(this, null);
    }

    public zzlh setBirthday(Date date)
    {
        zzlh.zzlh(date);
        return this;
    }

    public zzlh setContentUrl(String s)
    {
        zzx.zzb(s, "Content URL must be non-null.");
        zzx.zzb(s, "Content URL must be non-empty.");
        boolean flag;
        if (s.length() <= 512)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Content URL must not exceed %d in length.  Provided length was %d.", new Object[] {
            Integer.valueOf(512), Integer.valueOf(s.length())
        });
        zzlh.zzlh(s);
        return this;
    }

    public zzlh setGender(int i)
    {
        zzlh.zzlh(i);
        return this;
    }

    public zzlh setLocation(Location location)
    {
        zzlh.zzlh(location);
        return this;
    }

    public zzlh setManualImpressionsEnabled(boolean flag)
    {
        zzlh.zzlh(flag);
        return this;
    }

    public zzlh setPublisherProvidedId(String s)
    {
        zzlh.zzlh(s);
        return this;
    }

    public zzlh setRequestAgent(String s)
    {
        zzlh.zzlh(s);
        return this;
    }

    public zzlh tagForChildDirectedTreatment(boolean flag)
    {
        zzlh.zzlh(flag);
        return this;
    }

    public ()
    {
    }
}
