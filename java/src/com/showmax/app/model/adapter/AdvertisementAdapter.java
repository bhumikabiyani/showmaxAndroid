// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter;

import android.content.Context;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.showmax.app.ShowMaxApp;
import com.showmax.lib.api.model.catalogue.Advertisement;
import com.showmax.lib.api.utils.MauImage;
import java.util.ArrayList;

public class AdvertisementAdapter extends PagerAdapter
{
    public static interface OnItemClickListener
    {

        public abstract void onItemClick(Advertisement advertisement);
    }


    private ArrayList mAds;
    private LayoutInflater mInflater;
    private OnItemClickListener mListener;
    private android.view.View.OnClickListener mOnItemClickListener;

    public AdvertisementAdapter(Context context)
    {
        mOnItemClickListener = new android.view.View.OnClickListener() {

            final AdvertisementAdapter this$0;

            public void onClick(View view)
            {
                view = (Advertisement)view.getTag();
                if (view != null && mOnItemClickListener != null)
                {
                    mListener.onItemClick(view);
                }
            }

            
            {
                this$0 = AdvertisementAdapter.this;
                super();
            }
        };
        mInflater = (LayoutInflater)context.getSystemService("layout_inflater");
    }

    public void destroyItem(View view, int i, Object obj)
    {
        ((ViewPager)view).removeView((View)obj);
    }

    public void finishUpdate(View view)
    {
    }

    public int getCount()
    {
        if (mAds == null)
        {
            return 0;
        } else
        {
            return mAds.size();
        }
    }

    public Advertisement getItem(int i)
    {
        if (mAds != null && !mAds.isEmpty() && i < mAds.size())
        {
            return (Advertisement)mAds.get(i);
        } else
        {
            return null;
        }
    }

    public Object instantiateItem(ViewGroup viewgroup, int i)
    {
        View view = mInflater.inflate(0x7f030049, null);
        ImageView imageview = (ImageView)view.findViewById(0x7f0b0136);
        String s = ((Advertisement)mAds.get(i)).image;
        if (mAds.size() > i && s != null)
        {
            MauImage.loadImage(s, imageview, com.showmax.lib.api.utils.MauImage.ImageType.BANNER, ShowMaxApp.sDEFAULT_ADVERTISEMENT_HEIGHT);
        }
        view.setTag(mAds.get(i));
        view.setOnClickListener(mOnItemClickListener);
        viewgroup.addView(view);
        return view;
    }

    public boolean isViewFromObject(View view, Object obj)
    {
        return view == obj;
    }

    public void restoreState(Parcelable parcelable, ClassLoader classloader)
    {
    }

    public Parcelable saveState()
    {
        return null;
    }

    public void setData(ArrayList arraylist)
    {
        mAds = arraylist;
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(OnItemClickListener onitemclicklistener)
    {
        mListener = onitemclicklistener;
    }

    public void startUpdate(View view)
    {
    }


}
