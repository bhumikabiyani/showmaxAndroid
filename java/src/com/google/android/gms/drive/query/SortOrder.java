// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.SortableMetadataField;
import com.google.android.gms.drive.query.internal.FieldWithSortOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.drive.query:
//            zzb

public class SortOrder
    implements SafeParcelable
{
    public static class Builder
    {

        private final List zzWu = new ArrayList();
        private boolean zzWv;

        public Builder addSortAscending(SortableMetadataField sortablemetadatafield)
        {
            zzWu.add(new FieldWithSortOrder(sortablemetadatafield.getName(), true));
            return this;
        }

        public Builder addSortDescending(SortableMetadataField sortablemetadatafield)
        {
            zzWu.add(new FieldWithSortOrder(sortablemetadatafield.getName(), false));
            return this;
        }

        public SortOrder build()
        {
            return new SortOrder(zzWu, zzWv);
        }

        public Builder()
        {
            zzWv = false;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new zzb();
    final int zzFG;
    final List zzWu;
    final boolean zzWv;

    SortOrder(int i, List list, boolean flag)
    {
        zzFG = i;
        zzWu = list;
        zzWv = flag;
    }

    private SortOrder(List list, boolean flag)
    {
        this(1, list, flag);
    }


    public int describeContents()
    {
        return 0;
    }

    public String toString()
    {
        return String.format(Locale.US, "SortOrder[%s, %s]", new Object[] {
            TextUtils.join(",", zzWu), Boolean.valueOf(zzWv)
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzb.zza(this, parcel, i);
    }

}
