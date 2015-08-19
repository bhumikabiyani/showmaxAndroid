// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.simplelist;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;

// Referenced classes of package com.afollestad.materialdialogs.simplelist:
//            MaterialSimpleListItem

public static class mContext
{

    protected CharSequence mContent;
    private Context mContext;
    protected Drawable mIcon;

    public MaterialSimpleListItem build()
    {
        return new MaterialSimpleListItem(this, null);
    }

    public mContext content(int i)
    {
        return content(((CharSequence) (mContext.getString(i))));
    }

    public mContext content(CharSequence charsequence)
    {
        mContent = charsequence;
        return this;
    }

    public mContent icon(int i)
    {
        return icon(ContextCompat.getDrawable(mContext, i));
    }

    public mContext icon(Drawable drawable)
    {
        mIcon = drawable;
        return this;
    }

    public (Context context)
    {
        mContext = context;
    }
}
