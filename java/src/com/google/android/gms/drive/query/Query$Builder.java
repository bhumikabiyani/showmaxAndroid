// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query;

import com.google.android.gms.drive.query.internal.LogicalFilter;
import com.google.android.gms.drive.query.internal.MatchAllFilter;
import com.google.android.gms.drive.query.internal.Operator;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.drive.query:
//            Query, SortOrder, Filter

public static class zzUy
{

    private Set zzUy;
    private String zzWn;
    private SortOrder zzWo;
    private List zzWp;
    private boolean zzWq;
    private final List zzWr;

    public zzUy addFilter(Filter filter)
    {
        if (!(filter instanceof MatchAllFilter))
        {
            zzWr.add(filter);
        }
        return this;
    }

    public Query build()
    {
        return new Query(new LogicalFilter(Operator.zzWR, zzWr), zzWn, zzWo, zzWp, zzWq, zzUy, null);
    }

    public alFilter setPageToken(String s)
    {
        zzWn = s;
        return this;
    }

    public zzWn setSortOrder(SortOrder sortorder)
    {
        zzWo = sortorder;
        return this;
    }

    public tor()
    {
        zzWr = new ArrayList();
    }

    public zzWr(Query query)
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
