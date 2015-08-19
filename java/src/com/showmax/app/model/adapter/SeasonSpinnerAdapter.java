// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.model.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.app.Defs;
import com.showmax.lib.api.model.catalogue.Asset;
import java.util.ArrayList;

public class SeasonSpinnerAdapter extends BaseAdapter
    implements Defs
{
    static class ViewHolder
    {

        TextView title;

        ViewHolder()
        {
            title = null;
        }
    }


    private static final int RES_ID_ITEM_LAYOUT_DROPDOWN = 0x7f030060;
    private static final int RES_ID_ITEM_LAYOUT_MAIN = 0x7f03005f;
    private static final int RES_ID_STRING_SEASON = 0x7f0d00c2;
    private LayoutInflater mInflater;
    private String mSeasonText;
    private ArrayList mSeasons;

    public SeasonSpinnerAdapter(Context context)
    {
        this(context, null);
    }

    public SeasonSpinnerAdapter(Context context, ArrayList arraylist)
    {
        mInflater = (LayoutInflater)context.getSystemService("layout_inflater");
        mSeasonText = context.getString(0x7f0d00c2);
        mSeasons = new ArrayList();
        if (arraylist != null)
        {
            mSeasons.addAll(arraylist);
        }
        MauLog.d("[SeasonSpinnerAdapter]::[Seasons count: %d]", new Object[] {
            Integer.valueOf(mSeasons.size())
        });
    }

    private String getSeasonText(int i)
    {
        return String.format(mSeasonText, new Object[] {
            Integer.valueOf(i)
        });
    }

    public int getCount()
    {
        return mSeasons.size();
    }

    public View getDropDownView(int i, View view, ViewGroup viewgroup)
    {
        Asset asset = getItem(i);
        if (view == null)
        {
            ViewHolder viewholder = new ViewHolder();
            view = mInflater.inflate(0x7f030060, viewgroup, false);
            viewholder.title = (TextView)view;
            view.setTag(viewholder);
            viewgroup = viewholder;
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        ((ViewHolder) (viewgroup)).title.setText(getSeasonText(asset.number));
        return view;
    }

    public Asset getItem(int i)
    {
        return (Asset)mSeasons.get(i);
    }

    public volatile Object getItem(int i)
    {
        return getItem(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public int getPositionForSeasonNumber(int i)
    {
        if (mSeasons != null && !mSeasons.isEmpty())
        {
            for (int j = 0; j < mSeasons.size(); j++)
            {
                if (((Asset)mSeasons.get(j)).number == i)
                {
                    return j;
                }
            }

        }
        return -1;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        Asset asset = getItem(i);
        if (view == null)
        {
            ViewHolder viewholder = new ViewHolder();
            view = mInflater.inflate(0x7f03005f, viewgroup, false);
            viewholder.title = (TextView)view;
            view.setTag(viewholder);
            viewgroup = viewholder;
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        ((ViewHolder) (viewgroup)).title.setText(getSeasonText(asset.number));
        return view;
    }

    public void setData(ArrayList arraylist)
    {
        mSeasons = new ArrayList();
        if (arraylist != null)
        {
            mSeasons.addAll(arraylist);
        }
        notifyDataSetChanged();
    }
}
