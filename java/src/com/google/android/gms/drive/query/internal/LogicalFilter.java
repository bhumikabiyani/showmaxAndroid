// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.query.Filter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.drive.query.internal:
//            AbstractFilter, zzj, FilterHolder, zzf, 
//            Operator

public class LogicalFilter extends AbstractFilter
{

    public static final android.os.Parcelable.Creator CREATOR = new zzj();
    final int zzFG;
    final List zzWK;
    private List zzWr;
    final Operator zzWw;

    LogicalFilter(int i, Operator operator, List list)
    {
        zzFG = i;
        zzWw = operator;
        zzWK = list;
    }

    public transient LogicalFilter(Operator operator, Filter filter, Filter afilter[])
    {
        zzFG = 1;
        zzWw = operator;
        zzWK = new ArrayList(afilter.length + 1);
        zzWK.add(new FilterHolder(filter));
        zzWr = new ArrayList(afilter.length + 1);
        zzWr.add(filter);
        int j = afilter.length;
        for (int i = 0; i < j; i++)
        {
            operator = afilter[i];
            zzWK.add(new FilterHolder(operator));
            zzWr.add(operator);
        }

    }

    public LogicalFilter(Operator operator, Iterable iterable)
    {
        zzFG = 1;
        zzWw = operator;
        zzWr = new ArrayList();
        zzWK = new ArrayList();
        for (operator = iterable.iterator(); operator.hasNext(); zzWK.add(new FilterHolder(iterable)))
        {
            iterable = (Filter)operator.next();
            zzWr.add(iterable);
        }

    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzj.zza(this, parcel, i);
    }

    public Object zza(zzf zzf1)
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = zzWK.iterator(); iterator.hasNext(); arraylist.add(((FilterHolder)iterator.next()).getFilter().zza(zzf1))) { }
        return zzf1.zzb(zzWw, arraylist);
    }

}
