// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.videoview.model.data.VideoViewAsset;

// Referenced classes of package com.showmax.app.ui:
//            ActivityPlayer

public class mDescription
    implements VideoViewAsset
{

    private String mDescription;
    private String mLenght;
    private String mTitle;
    private String mUrl;
    private String mYear;
    final ActivityPlayer this$0;

    public String getDescription()
    {
        return mDescription;
    }

    public String getLenght()
    {
        return mLenght;
    }

    public String getTitle()
    {
        return mTitle;
    }

    public String getUrl()
    {
        return mUrl;
    }

    public String getYear()
    {
        return mYear;
    }

    public wAsset(String s, String s1, String s2, String s3, String s4)
    {
        this$0 = ActivityPlayer.this;
        super();
        mUrl = s;
        mTitle = s1;
        mLenght = s2;
        mYear = s3;
        mDescription = s4;
    }
}
