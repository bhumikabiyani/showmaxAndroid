// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.showmax.lib.api.utils.MauImage;

// Referenced classes of package com.showmax.app.ui:
//            ActivityTutorial

public static class  extends Fragment
{

    private int mHeight;
    private int mImgSrc;
    private int mText;
    private int mWidth;

    public static  newInstance(int i, int j)
    {
          = new <init>();
        Bundle bundle = new Bundle();
        bundle.putInt("text", i);
        bundle.putInt("imgSrc", j);
        .setArguments(bundle);
        return ;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mText = getArguments().getInt("text");
        mImgSrc = getArguments().getInt("imgSrc");
        mHeight = getResources().getDisplayMetrics().heightPixels;
        mWidth = getResources().getDisplayMetrics().widthPixels;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(0x7f030047, null, false);
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        ((TextView)view.findViewById(0x7f0b012f)).setText(mText);
        ((ImageView)view.findViewById(0x7f0b012e)).setImageBitmap(MauImage.decodeSampledBitmapFromResource(getResources(), mImgSrc, mWidth, mHeight));
    }

    public ()
    {
    }
}
