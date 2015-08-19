// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query;

import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.SearchableOrderedMetadataField;
import com.google.android.gms.drive.query.internal.ComparisonFilter;
import com.google.android.gms.drive.query.internal.FieldOnlyFilter;
import com.google.android.gms.drive.query.internal.HasFilter;
import com.google.android.gms.drive.query.internal.InFilter;
import com.google.android.gms.drive.query.internal.LogicalFilter;
import com.google.android.gms.drive.query.internal.NotFilter;
import com.google.android.gms.drive.query.internal.Operator;

// Referenced classes of package com.google.android.gms.drive.query:
//            SearchableField, Filter

public class Filters
{

    public Filters()
    {
    }

    public static transient Filter and(Filter filter, Filter afilter[])
    {
        return new LogicalFilter(Operator.zzWR, filter, afilter);
    }

    public static Filter and(Iterable iterable)
    {
        return new LogicalFilter(Operator.zzWR, iterable);
    }

    public static Filter contains(SearchableMetadataField searchablemetadatafield, String s)
    {
        return new ComparisonFilter(Operator.zzWU, searchablemetadatafield, s);
    }

    public static Filter eq(CustomPropertyKey custompropertykey, String s)
    {
        return new HasFilter(SearchableField.zzWt, (new com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties.zza()).zza(custompropertykey, s).zzkW());
    }

    public static Filter eq(SearchableMetadataField searchablemetadatafield, Object obj)
    {
        return new ComparisonFilter(Operator.zzWM, searchablemetadatafield, obj);
    }

    public static Filter greaterThan(SearchableOrderedMetadataField searchableorderedmetadatafield, Comparable comparable)
    {
        return new ComparisonFilter(Operator.zzWP, searchableorderedmetadatafield, comparable);
    }

    public static Filter greaterThanEquals(SearchableOrderedMetadataField searchableorderedmetadatafield, Comparable comparable)
    {
        return new ComparisonFilter(Operator.zzWQ, searchableorderedmetadatafield, comparable);
    }

    public static Filter in(SearchableCollectionMetadataField searchablecollectionmetadatafield, Object obj)
    {
        return new InFilter(searchablecollectionmetadatafield, obj);
    }

    public static Filter lessThan(SearchableOrderedMetadataField searchableorderedmetadatafield, Comparable comparable)
    {
        return new ComparisonFilter(Operator.zzWN, searchableorderedmetadatafield, comparable);
    }

    public static Filter lessThanEquals(SearchableOrderedMetadataField searchableorderedmetadatafield, Comparable comparable)
    {
        return new ComparisonFilter(Operator.zzWO, searchableorderedmetadatafield, comparable);
    }

    public static Filter not(Filter filter)
    {
        return new NotFilter(filter);
    }

    public static Filter openedByMe()
    {
        return new FieldOnlyFilter(SearchableField.LAST_VIEWED_BY_ME);
    }

    public static transient Filter or(Filter filter, Filter afilter[])
    {
        return new LogicalFilter(Operator.zzWS, filter, afilter);
    }

    public static Filter or(Iterable iterable)
    {
        return new LogicalFilter(Operator.zzWS, iterable);
    }

    public static Filter sharedWithMe()
    {
        return new FieldOnlyFilter(SearchableField.zzWs);
    }
}
