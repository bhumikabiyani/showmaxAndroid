// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.fragment;


// Referenced classes of package com.showmax.app.ui.fragment:
//            FragmentMovieDetail

class this._cls0
    implements com.showmax.app.ui.widget.istener
{

    final FragmentMovieDetail this$0;

    public void onTagClicked(String s)
    {
        if (FragmentMovieDetail.access$000(FragmentMovieDetail.this) != null)
        {
            FragmentMovieDetail.access$000(FragmentMovieDetail.this).onTagClicked(s);
        }
    }

    agmentAssetDetailListener()
    {
        this$0 = FragmentMovieDetail.this;
        super();
    }
}
