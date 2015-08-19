// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.simplelist;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;

public class MaterialSimpleListItem
{
    public static class Builder
    {

        protected CharSequence mContent;
        private Context mContext;
        protected Drawable mIcon;

        public MaterialSimpleListItem build()
        {
            return new MaterialSimpleListItem(this);
        }

        public Builder content(int i)
        {
            return content(((CharSequence) (mContext.getString(i))));
        }

        public Builder content(CharSequence charsequence)
        {
            mContent = charsequence;
            return this;
        }

        public Builder icon(int i)
        {
            return icon(ContextCompat.getDrawable(mContext, i));
        }

        public Builder icon(Drawable drawable)
        {
            mIcon = drawable;
            return this;
        }

        public Builder(Context context)
        {
            mContext = context;
        }
    }


    private Builder mBuilder;

    private MaterialSimpleListItem(Builder builder)
    {
        mBuilder = builder;
    }


    public CharSequence getContent()
    {
        return mBuilder.mContent;
    }

    public Drawable getIcon()
    {
        return mBuilder.mIcon;
    }

    public String toString()
    {
        if (getContent() != null)
        {
            return getContent().toString();
        } else
        {
            return "(no content)";
        }
    }
}
