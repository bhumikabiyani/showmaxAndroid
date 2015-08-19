// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.zza;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.internal.zzw;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.internal.zzmi;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.drive.metadata.internal:
//            zzh, zze

public final class MetadataBundle
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzh();
    final int zzFG;
    final Bundle zzVq;

    MetadataBundle(int i, Bundle bundle)
    {
        zzFG = i;
        zzVq = (Bundle)zzx.zzl(bundle);
        zzVq.setClassLoader(getClass().getClassLoader());
        bundle = new ArrayList();
        Iterator iterator = zzVq.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            if (zze.zzby(s1) == null)
            {
                bundle.add(s1);
                zzw.zzr("MetadataBundle", (new StringBuilder()).append("Ignored unknown metadata field in bundle: ").append(s1).toString());
            }
        } while (true);
        String s;
        for (bundle = bundle.iterator(); bundle.hasNext(); zzVq.remove(s))
        {
            s = (String)bundle.next();
        }

    }

    private MetadataBundle(Bundle bundle)
    {
        this(1, bundle);
    }

    public static MetadataBundle zza(MetadataField metadatafield, Object obj)
    {
        MetadataBundle metadatabundle = zzkZ();
        metadatabundle.zzb(metadatafield, obj);
        return metadatabundle;
    }

    public static MetadataBundle zza(MetadataBundle metadatabundle)
    {
        return new MetadataBundle(new Bundle(metadatabundle.zzVq));
    }

    public static MetadataBundle zzkZ()
    {
        return new MetadataBundle(new Bundle());
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof MetadataBundle))
        {
            return false;
        }
        obj = (MetadataBundle)obj;
        Object obj1 = zzVq.keySet();
        if (!((Set) (obj1)).equals(((MetadataBundle) (obj)).zzVq.keySet()))
        {
            return false;
        }
        for (obj1 = ((Set) (obj1)).iterator(); ((Iterator) (obj1)).hasNext();)
        {
            String s = (String)((Iterator) (obj1)).next();
            if (!com.google.android.gms.common.internal.zzw.equal(zzVq.get(s), ((MetadataBundle) (obj)).zzVq.get(s)))
            {
                return false;
            }
        }

        return true;
    }

    public int hashCode()
    {
        Iterator iterator = zzVq.keySet().iterator();
        String s;
        int i;
        for (i = 1; iterator.hasNext(); i = zzVq.get(s).hashCode() + i * 31)
        {
            s = (String)iterator.next();
        }

        return i;
    }

    public void setContext(Context context)
    {
        zza zza1 = (zza)zza(zzmi.zzVU);
        if (zza1 != null)
        {
            zza1.zza(context.getCacheDir());
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("MetadataBundle [values=").append(zzVq).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.drive.metadata.internal.zzh.zza(this, parcel, i);
    }

    public Object zza(MetadataField metadatafield)
    {
        return metadatafield.zza(zzVq);
    }

    public void zzb(MetadataField metadatafield, Object obj)
    {
        if (zze.zzby(metadatafield.getName()) == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unregistered field: ").append(metadatafield.getName()).toString());
        } else
        {
            metadatafield.zza(obj, zzVq);
            return;
        }
    }

    public boolean zzc(MetadataField metadatafield)
    {
        return zzVq.containsKey(metadatafield.getName());
    }

    public Set zzla()
    {
        HashSet hashset = new HashSet();
        for (Iterator iterator = zzVq.keySet().iterator(); iterator.hasNext(); hashset.add(zze.zzby((String)iterator.next()))) { }
        return hashset;
    }

}
