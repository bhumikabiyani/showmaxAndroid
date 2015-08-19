// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.query.internal.LogicalFilter;
import com.google.android.gms.drive.query.internal.MatchAllFilter;
import com.google.android.gms.drive.query.internal.Operator;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

// Referenced classes of package com.google.android.gms.drive.query:
//            zza, SortOrder, Filter

public class Query
    implements SafeParcelable
{
    public static class Builder
    {

        private Set zzUy;
        private String zzWn;
        private SortOrder zzWo;
        private List zzWp;
        private boolean zzWq;
        private final List zzWr;

        public Builder addFilter(Filter filter)
        {
            if (!(filter instanceof MatchAllFilter))
            {
                zzWr.add(filter);
            }
            return this;
        }

        public Query build()
        {
            return new Query(new LogicalFilter(Operator.zzWR, zzWr), zzWn, zzWo, zzWp, zzWq, zzUy);
        }

        public Builder setPageToken(String s)
        {
            zzWn = s;
            return this;
        }

        public Builder setSortOrder(SortOrder sortorder)
        {
            zzWo = sortorder;
            return this;
        }

        public Builder()
        {
            zzWr = new ArrayList();
        }

        public Builder(Query query)
        {
            zzWr = new ArrayList();
            zzWr.add(query.getFilter());
            zzWn = query.getPageToken();
            zzWo = query.getSortOrder();
            zzWp = query.zzlb();
            zzWq = query.zzlc();
            zzUy = query.zzld();
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new zza();
    final int zzFG;
    final List zzUx;
    private final Set zzUy;
    final LogicalFilter zzWm;
    final String zzWn;
    final SortOrder zzWo;
    final List zzWp;
    final boolean zzWq;

    Query(int i, LogicalFilter logicalfilter, String s, SortOrder sortorder, List list, boolean flag, List list1)
    {
        Object obj;
        if (list1 == null)
        {
            obj = null;
        } else
        {
            obj = new HashSet(list1);
        }
        this(i, logicalfilter, s, sortorder, list, flag, list1, ((Set) (obj)));
    }

    private Query(int i, LogicalFilter logicalfilter, String s, SortOrder sortorder, List list, boolean flag, List list1, 
            Set set)
    {
        zzFG = i;
        zzWm = logicalfilter;
        zzWn = s;
        zzWo = sortorder;
        zzWp = list;
        zzWq = flag;
        zzUx = list1;
        zzUy = set;
    }

    private Query(LogicalFilter logicalfilter, String s, SortOrder sortorder, List list, boolean flag, Set set)
    {
        Object obj;
        if (set == null)
        {
            obj = null;
        } else
        {
            obj = new ArrayList(set);
        }
        this(1, logicalfilter, s, sortorder, list, flag, ((List) (obj)), set);
    }


    public int describeContents()
    {
        return 0;
    }

    public Filter getFilter()
    {
        return zzWm;
    }

    public String getPageToken()
    {
        return zzWn;
    }

    public SortOrder getSortOrder()
    {
        return zzWo;
    }

    public String toString()
    {
        return String.format(Locale.US, "Query[%s,%s,PageToken=%s,Spaces=%s]", new Object[] {
            zzWm, zzWo, zzWn, zzUx
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zza.zza(this, parcel, i);
    }

    public List zzlb()
    {
        return zzWp;
    }

    public boolean zzlc()
    {
        return zzWq;
    }

    public Set zzld()
    {
        return zzUy;
    }

}
