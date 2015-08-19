// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;

import android.support.v7.widget.RecyclerView;

// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentSearch

class llListener extends android.support.v7.widget.rollListener
{

    final FragmentSearch this$0;

    public void onScrollStateChanged(RecyclerView recyclerview, int i)
    {
        super.onScrollStateChanged(recyclerview, i);
        recyclerview = FragmentSearch.access$000(FragmentSearch.this);
        boolean flag;
        if (i != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        recyclerview.onScrollStateChanged(flag);
    }

    agmentSearchListener()
    {
        this$0 = FragmentSearch.this;
        super();
    }
}
