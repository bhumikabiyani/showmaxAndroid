// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.wefika.flowlayout.FlowLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TagsLayout extends FlowLayout
{
    public static interface TagsLayoutListener
    {

        public abstract void onTagClicked(String s);
    }


    private TagsLayoutListener mListener;
    private android.view.View.OnClickListener mOnTagClickListener = new android.view.View.OnClickListener() {

        final TagsLayout this$0;

        public void onClick(View view)
        {
            if (mListener != null && (view instanceof TextView))
            {
                mListener.onTagClicked(((TextView)view).getText().toString());
            }
        }

            
            {
                this$0 = TagsLayout.this;
                super();
            }
    };
    private ArrayList mTags;

    public TagsLayout(Context context)
    {
        super(context);
        mTags = new ArrayList();
    }

    public TagsLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mTags = new ArrayList();
    }

    public TagsLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mTags = new ArrayList();
    }

    private TextView inflateTag(String s, LayoutInflater layoutinflater)
    {
        layoutinflater = (TextView)layoutinflater.inflate(0x7f030063, this, false);
        layoutinflater.setText(s);
        layoutinflater.setOnClickListener(mOnTagClickListener);
        return layoutinflater;
    }

    private void inflateTags()
    {
        removeAllViews();
        LayoutInflater layoutinflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
        for (Iterator iterator = mTags.iterator(); iterator.hasNext(); addView(inflateTag((String)iterator.next(), layoutinflater))) { }
    }

    public void setListener(TagsLayoutListener tagslayoutlistener)
    {
        mListener = tagslayoutlistener;
    }

    public void setTags(List list)
    {
        if (list != null && !list.isEmpty())
        {
            mTags.clear();
            mTags.addAll(list);
            inflateTags();
        }
    }

}
