// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;

public class SearchView extends EditText
{
    public static interface SearchViewListener
    {

        public abstract void onKeyBoardHidden();
    }


    private SearchViewListener mSearchViewListener;

    public SearchView(Context context)
    {
        super(context);
    }

    public SearchView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public SearchView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public boolean onKeyPreIme(int i, KeyEvent keyevent)
    {
        if (keyevent.getKeyCode() == 4 && keyevent.getAction() == 1 && mSearchViewListener != null)
        {
            mSearchViewListener.onKeyBoardHidden();
        }
        return super.dispatchKeyEvent(keyevent);
    }

    public void setSearchViewListener(SearchViewListener searchviewlistener)
    {
        mSearchViewListener = searchviewlistener;
    }
}
