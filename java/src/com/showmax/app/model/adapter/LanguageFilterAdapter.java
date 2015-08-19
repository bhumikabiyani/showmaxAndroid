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
import com.showmax.app.util.StringUtils;
import com.showmax.lib.api.model.catalogue.Language;
import java.util.ArrayList;

public class LanguageFilterAdapter extends BaseAdapter
{

    private static final int RES_ID_VIEW_LAYOUT = 0x7f03005d;
    private static final int RES_ID_VIEW_LAYOUT_DROPDOWN = 0x7f03005e;
    private String mAllStr;
    private LayoutInflater mInflater;
    private ArrayList mLanguages;

    public LanguageFilterAdapter(Context context)
    {
        mInflater = (LayoutInflater)context.getSystemService("layout_inflater");
        mAllStr = StringUtils.getAllString(context);
    }

    public int getCount()
    {
        if (mLanguages == null)
        {
            return 0;
        } else
        {
            return mLanguages.size();
        }
    }

    public ArrayList getData()
    {
        return mLanguages;
    }

    public View getDropDownView(int i, View view, ViewGroup viewgroup)
    {
        view = mInflater.inflate(0x7f03005e, viewgroup, false);
        viewgroup = (TextView)view.findViewById(0x7f0b0156);
        Language language = getItem(i);
        if (language == null)
        {
            viewgroup.setText(mAllStr);
            return view;
        } else
        {
            viewgroup.setText(language.name);
            return view;
        }
    }

    public Language getItem(int i)
    {
        if (mLanguages == null)
        {
            return null;
        } else
        {
            return (Language)mLanguages.get(i);
        }
    }

    public volatile Object getItem(int i)
    {
        return getItem(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public int getItemPosition(Language language)
    {
        if (mLanguages != null && !mLanguages.isEmpty() && language != null)
        {
            for (int i = 0; i < mLanguages.size(); i++)
            {
                Language language1 = (Language)mLanguages.get(i);
                if (language.iso6393 != null && language1 != null && language.iso6393.equals(language1.iso6393))
                {
                    return i;
                }
            }

        }
        return 0;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        view = mInflater.inflate(0x7f03005d, viewgroup, false);
        viewgroup = (TextView)view.findViewById(0x7f0b0156);
        Language language = getItem(i);
        if (language == null)
        {
            viewgroup.setText(mAllStr);
            return view;
        } else
        {
            viewgroup.setText(language.name);
            return view;
        }
    }

    public void setData(ArrayList arraylist)
    {
        mLanguages = new ArrayList();
        mLanguages.add(null);
        mLanguages.addAll(arraylist);
    }
}
