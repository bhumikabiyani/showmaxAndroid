// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.query.Filter;

// Referenced classes of package com.google.android.gms.drive.query.internal:
//            zzd, ComparisonFilter, FieldOnlyFilter, LogicalFilter, 
//            NotFilter, InFilter, MatchAllFilter, HasFilter, 
//            FullTextSearchFilter

public class FilterHolder
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzd();
    final int zzFG;
    final ComparisonFilter zzWA;
    final FieldOnlyFilter zzWB;
    final LogicalFilter zzWC;
    final NotFilter zzWD;
    final InFilter zzWE;
    final MatchAllFilter zzWF;
    final HasFilter zzWG;
    final FullTextSearchFilter zzWH;
    private final Filter zzWI;

    FilterHolder(int i, ComparisonFilter comparisonfilter, FieldOnlyFilter fieldonlyfilter, LogicalFilter logicalfilter, NotFilter notfilter, InFilter infilter, MatchAllFilter matchallfilter, 
            HasFilter hasfilter, FullTextSearchFilter fulltextsearchfilter)
    {
        zzFG = i;
        zzWA = comparisonfilter;
        zzWB = fieldonlyfilter;
        zzWC = logicalfilter;
        zzWD = notfilter;
        zzWE = infilter;
        zzWF = matchallfilter;
        zzWG = hasfilter;
        zzWH = fulltextsearchfilter;
        if (zzWA != null)
        {
            zzWI = zzWA;
            return;
        }
        if (zzWB != null)
        {
            zzWI = zzWB;
            return;
        }
        if (zzWC != null)
        {
            zzWI = zzWC;
            return;
        }
        if (zzWD != null)
        {
            zzWI = zzWD;
            return;
        }
        if (zzWE != null)
        {
            zzWI = zzWE;
            return;
        }
        if (zzWF != null)
        {
            zzWI = zzWF;
            return;
        }
        if (zzWG != null)
        {
            zzWI = zzWG;
            return;
        }
        if (zzWH != null)
        {
            zzWI = zzWH;
            return;
        } else
        {
            throw new IllegalArgumentException("At least one filter must be set.");
        }
    }

    public FilterHolder(Filter filter)
    {
        zzx.zzb(filter, "Null filter.");
        zzFG = 2;
        Object obj;
        if (filter instanceof ComparisonFilter)
        {
            obj = (ComparisonFilter)filter;
        } else
        {
            obj = null;
        }
        zzWA = ((ComparisonFilter) (obj));
        if (filter instanceof FieldOnlyFilter)
        {
            obj = (FieldOnlyFilter)filter;
        } else
        {
            obj = null;
        }
        zzWB = ((FieldOnlyFilter) (obj));
        if (filter instanceof LogicalFilter)
        {
            obj = (LogicalFilter)filter;
        } else
        {
            obj = null;
        }
        zzWC = ((LogicalFilter) (obj));
        if (filter instanceof NotFilter)
        {
            obj = (NotFilter)filter;
        } else
        {
            obj = null;
        }
        zzWD = ((NotFilter) (obj));
        if (filter instanceof InFilter)
        {
            obj = (InFilter)filter;
        } else
        {
            obj = null;
        }
        zzWE = ((InFilter) (obj));
        if (filter instanceof MatchAllFilter)
        {
            obj = (MatchAllFilter)filter;
        } else
        {
            obj = null;
        }
        zzWF = ((MatchAllFilter) (obj));
        if (filter instanceof HasFilter)
        {
            obj = (HasFilter)filter;
        } else
        {
            obj = null;
        }
        zzWG = ((HasFilter) (obj));
        if (filter instanceof FullTextSearchFilter)
        {
            obj = (FullTextSearchFilter)filter;
        } else
        {
            obj = null;
        }
        zzWH = ((FullTextSearchFilter) (obj));
        if (zzWA == null && zzWB == null && zzWC == null && zzWD == null && zzWE == null && zzWF == null && zzWG == null && zzWH == null)
        {
            throw new IllegalArgumentException("Invalid filter type.");
        } else
        {
            zzWI = filter;
            return;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public Filter getFilter()
    {
        return zzWI;
    }

    public String toString()
    {
        return String.format("FilterHolder[%s]", new Object[] {
            zzWI
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzd.zza(this, parcel, i);
    }

}
