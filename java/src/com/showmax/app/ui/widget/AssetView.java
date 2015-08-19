// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.showmax.lib.api.utils.UserPrefs;

// Referenced classes of package com.showmax.app.ui.widget:
//            LetterSpacingRobotoTextView

public class AssetView extends RelativeLayout
{

    private boolean mHasForeground;
    private ImageView mImage;
    private String mImgUrl;
    private com.showmax.lib.api.model.catalogue.Asset.VodModel mVodModel;
    private TextView mVodModelMark;

    public AssetView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init(attributeset, 0);
    }

    public AssetView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init(attributeset, i);
    }

    private void init(AttributeSet attributeset, int i)
    {
        attributeset = getContext().obtainStyledAttributes(attributeset, com.showmax.app.R.styleable.AssetView);
        mHasForeground = attributeset.getBoolean(0, false);
        attributeset.recycle();
        initViews();
    }

    private void initViews()
    {
        Object obj = (LayoutInflater)getContext().getSystemService("layout_inflater");
        if (mHasForeground)
        {
            ((LayoutInflater) (obj)).inflate(0x7f030088, this, true);
        } else
        {
            ((LayoutInflater) (obj)).inflate(0x7f030087, this, true);
        }
        mImage = (ImageView)findViewById(0x7f0b0190);
        mVodModelMark = (TextView)findViewById(0x7f0b0191);
        if (UserPrefs.getCurrentLanguage(getContext()) != com.showmax.lib.api.io.ApiConstants.AppLanguage.ARA)
        {
            obj = new TypedValue();
            getResources().getValue(0x7f0a011f, ((TypedValue) (obj)), true);
            float f = ((TypedValue) (obj)).getFloat();
            ((LetterSpacingRobotoTextView)mVodModelMark).setLetterSpacing(f);
        }
    }

    public ImageView getImageView()
    {
        return mImage;
    }

    public void setImageBitmap(Bitmap bitmap)
    {
        if (mImage != null)
        {
            mImage.setImageBitmap(bitmap);
        }
    }

    public void setImageDrawable(Drawable drawable)
    {
        if (mImage != null)
        {
            mImage.setImageDrawable(drawable);
        }
    }

    public void setVodModel(com.showmax.lib.api.model.catalogue.Asset.VodModel vodmodel)
    {
        mVodModel = vodmodel;
        if (mVodModel == null)
        {
            mVodModelMark.setVisibility(8);
            return;
        }
        static class _cls1
        {

            static final int $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel[];

            static 
            {
                $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel = new int[com.showmax.lib.api.model.catalogue.Asset.VodModel.values().length];
                try
                {
                    $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel[com.showmax.lib.api.model.catalogue.Asset.VodModel.SVOD.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$showmax$lib$api$model$catalogue$Asset$VodModel[com.showmax.lib.api.model.catalogue.Asset.VodModel.AVOD.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        int j;
        switch (_cls1..SwitchMap.com.showmax.lib.api.model.catalogue.Asset.VodModel[mVodModel.ordinal()])
        {
        default:
            mVodModelMark.setVisibility(8);
            return;

        case 1: // '\001'
            int i = getResources().getColor(0x7f0900b2);
            vodmodel = getResources().getString(0x7f0d00d9);
            mVodModelMark.setBackgroundColor(i);
            mVodModelMark.setText(vodmodel);
            mVodModelMark.setVisibility(0);
            return;

        case 2: // '\002'
            j = getResources().getColor(0x7f0900b1);
            break;
        }
        vodmodel = getResources().getString(0x7f0d00d8);
        mVodModelMark.setBackgroundColor(j);
        mVodModelMark.setText(vodmodel);
        mVodModelMark.setVisibility(0);
    }
}
