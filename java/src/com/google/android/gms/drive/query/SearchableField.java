// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query;

import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.SearchableOrderedMetadataField;
import com.google.android.gms.internal.zzmi;
import com.google.android.gms.internal.zzmk;

public class SearchableField
{

    public static final SearchableMetadataField IS_PINNED;
    public static final SearchableOrderedMetadataField LAST_VIEWED_BY_ME;
    public static final SearchableMetadataField MIME_TYPE;
    public static final SearchableOrderedMetadataField MODIFIED_DATE;
    public static final SearchableCollectionMetadataField PARENTS;
    public static final SearchableMetadataField STARRED;
    public static final SearchableMetadataField TITLE;
    public static final SearchableMetadataField TRASHED;
    public static final SearchableOrderedMetadataField zzWs;
    public static final SearchableMetadataField zzWt;

    public SearchableField()
    {
    }

    static 
    {
        TITLE = zzmi.zzVV;
        MIME_TYPE = zzmi.zzVM;
        TRASHED = zzmi.zzVW;
        PARENTS = zzmi.zzVR;
        zzWs = zzmk.zzWi;
        STARRED = zzmi.zzVT;
        MODIFIED_DATE = zzmk.zzWg;
        LAST_VIEWED_BY_ME = zzmk.zzWf;
        IS_PINNED = zzmi.zzVF;
        zzWt = zzmi.zzVu;
    }
}
