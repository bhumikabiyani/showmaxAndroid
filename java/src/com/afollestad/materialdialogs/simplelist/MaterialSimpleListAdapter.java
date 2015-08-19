// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.simplelist;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.afollestad.materialdialogs.GravityEnum;
import com.afollestad.materialdialogs.MaterialDialog;

// Referenced classes of package com.afollestad.materialdialogs.simplelist:
//            MaterialSimpleListItem

public class MaterialSimpleListAdapter extends ArrayAdapter
{

    private MaterialDialog dialog;

    public MaterialSimpleListAdapter(Context context)
    {
        super(context, com.afollestad.materialdialogs.R.layout.md_simplelist_item, 0x1020016);
    }

    private boolean isRTL()
    {
        boolean flag = true;
        if (android.os.Build.VERSION.SDK_INT < 17)
        {
            return false;
        }
        if (getContext().getResources().getConfiguration().getLayoutDirection() != 1)
        {
            flag = false;
        }
        return flag;
    }

    private void setupGravity(ViewGroup viewgroup)
    {
        LinearLayout linearlayout = (LinearLayout)viewgroup;
        Object obj = dialog.getBuilder().getItemsGravity();
        linearlayout.setGravity(((GravityEnum) (obj)).getGravityInt() | 0x10);
        if (viewgroup.getChildCount() == 2)
        {
            if (dialog.getBuilder().getItemsGravity() == GravityEnum.END && !isRTL() && (viewgroup.getChildAt(0) instanceof ImageView))
            {
                CompoundButton compoundbutton = (CompoundButton)viewgroup.getChildAt(0);
                viewgroup.removeView(compoundbutton);
                obj = (TextView)viewgroup.getChildAt(0);
                viewgroup.removeView(((View) (obj)));
                ((TextView) (obj)).setPadding(((TextView) (obj)).getPaddingRight(), ((TextView) (obj)).getPaddingTop(), ((TextView) (obj)).getPaddingLeft(), ((TextView) (obj)).getPaddingBottom());
                viewgroup.addView(((View) (obj)));
                viewgroup.addView(compoundbutton);
            } else
            if (obj == GravityEnum.START && isRTL() && (viewgroup.getChildAt(1) instanceof ImageView))
            {
                CompoundButton compoundbutton1 = (CompoundButton)viewgroup.getChildAt(1);
                viewgroup.removeView(compoundbutton1);
                TextView textview = (TextView)viewgroup.getChildAt(0);
                viewgroup.removeView(textview);
                textview.setPadding(textview.getPaddingRight(), textview.getPaddingTop(), textview.getPaddingRight(), textview.getPaddingBottom());
                viewgroup.addView(compoundbutton1);
                viewgroup.addView(textview);
                return;
            }
        }
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        view = super.getView(i, view, viewgroup);
        if (dialog != null)
        {
            viewgroup = (MaterialSimpleListItem)getItem(i);
            Object obj = (ImageView)view.findViewById(0x1020006);
            if (viewgroup.getIcon() != null)
            {
                ((ImageView) (obj)).setImageDrawable(viewgroup.getIcon());
            } else
            {
                ((ImageView) (obj)).setVisibility(8);
            }
            obj = (TextView)view.findViewById(0x1020016);
            ((TextView) (obj)).setTextColor(dialog.getBuilder().getTitleColor());
            ((TextView) (obj)).setText(viewgroup.getContent());
            dialog.setTypeface(((TextView) (obj)), dialog.getBuilder().getRegularFont());
            setupGravity((ViewGroup)view);
        }
        return view;
    }

    public boolean hasStableIds()
    {
        return true;
    }

    public void setDialog(MaterialDialog materialdialog)
    {
        dialog = materialdialog;
        notifyDataSetChanged();
    }
}
