// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.google.android.gms.drive.metadata.internal:
//            zza, CustomProperty

public final class AppVisibleCustomProperties
    implements SafeParcelable, Iterable
{
    public static class zza
    {

        private final Map zzVn = new HashMap();

        public zza zza(CustomPropertyKey custompropertykey, String s)
        {
            zzx.zzb(custompropertykey, "key");
            zzVn.put(custompropertykey, new CustomProperty(custompropertykey, s));
            return this;
        }

        public AppVisibleCustomProperties zzkW()
        {
            return new AppVisibleCustomProperties(zzVn.values());
        }

        public zza()
        {
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new com.google.android.gms.drive.metadata.internal.zza();
    public static final AppVisibleCustomProperties zzVl = (new zza()).zzkW();
    final int zzFG;
    final List zzVm;

    AppVisibleCustomProperties(int i, Collection collection)
    {
        zzFG = i;
        zzx.zzl(collection);
        zzVm = new ArrayList(collection);
    }

    private AppVisibleCustomProperties(Collection collection)
    {
        this(1, collection);
    }


    public int describeContents()
    {
        return 0;
    }

    public Iterator iterator()
    {
        return zzVm.iterator();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.drive.metadata.internal.zza.zza(this, parcel, i);
    }

    public Map zzkV()
    {
        HashMap hashmap = new HashMap(zzVm.size());
        CustomProperty customproperty;
        for (Iterator iterator1 = zzVm.iterator(); iterator1.hasNext(); hashmap.put(customproperty.zzkX(), customproperty.getValue()))
        {
            customproperty = (CustomProperty)iterator1.next();
        }

        return Collections.unmodifiableMap(hashmap);
    }

}
