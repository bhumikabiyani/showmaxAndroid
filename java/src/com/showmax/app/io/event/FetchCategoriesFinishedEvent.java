// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io.event;

import android.util.Pair;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.io.event:
//            BaseFetchEvent

public class FetchCategoriesFinishedEvent extends BaseFetchEvent
{

    public FetchCategoriesFinishedEvent()
    {
    }

    public FetchCategoriesFinishedEvent(ArrayList arraylist, ArrayList arraylist1)
    {
        setSuccess(new Pair(arraylist, arraylist1));
    }

    public ArrayList getMovieCategories()
    {
        return (ArrayList)((Pair)getData()).first;
    }

    public ArrayList getTvSeriesCategories()
    {
        return (ArrayList)((Pair)getData()).second;
    }
}
