// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import com.afollestad.materialdialogs.internal.MDTintHelper;
import java.util.List;

// Referenced classes of package com.afollestad.materialdialogs:
//            MaterialDialog, GravityEnum

class MaterialDialogAdapter extends ArrayAdapter
{

    private final MaterialDialog dialog;
    private final GravityEnum itemGravity;

    public MaterialDialogAdapter(MaterialDialog materialdialog, int i, int j, CharSequence acharsequence[])
    {
        super(materialdialog.mBuilder.context, i, j, acharsequence);
        dialog = materialdialog;
        itemGravity = materialdialog.mBuilder.itemsGravity;
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
        ((LinearLayout)viewgroup).setGravity(itemGravity.getGravityInt() | 0x10);
        if (viewgroup.getChildCount() == 2)
        {
            if (itemGravity == GravityEnum.END && !isRTL() && (viewgroup.getChildAt(0) instanceof CompoundButton))
            {
                CompoundButton compoundbutton = (CompoundButton)viewgroup.getChildAt(0);
                viewgroup.removeView(compoundbutton);
                TextView textview = (TextView)viewgroup.getChildAt(0);
                viewgroup.removeView(textview);
                textview.setPadding(textview.getPaddingRight(), textview.getPaddingTop(), textview.getPaddingLeft(), textview.getPaddingBottom());
                viewgroup.addView(textview);
                viewgroup.addView(compoundbutton);
            } else
            if (itemGravity == GravityEnum.START && isRTL() && (viewgroup.getChildAt(1) instanceof CompoundButton))
            {
                CompoundButton compoundbutton1 = (CompoundButton)viewgroup.getChildAt(1);
                viewgroup.removeView(compoundbutton1);
                TextView textview1 = (TextView)viewgroup.getChildAt(0);
                viewgroup.removeView(textview1);
                textview1.setPadding(textview1.getPaddingRight(), textview1.getPaddingTop(), textview1.getPaddingRight(), textview1.getPaddingBottom());
                viewgroup.addView(compoundbutton1);
                viewgroup.addView(textview1);
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
        viewgroup = (TextView)view.findViewById(R.id.title);
        static class _cls1
        {

            static final int $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType[];

            static 
            {
                $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType = new int[MaterialDialog.ListType.values().length];
                try
                {
                    $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType[MaterialDialog.ListType.SINGLE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType[MaterialDialog.ListType.MULTI.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.com.afollestad.materialdialogs.MaterialDialog.ListType[dialog.listType.ordinal()];
        JVM INSTR tableswitch 1 2: default 56
    //                   1 193
    //                   2 253;
           goto _L1 _L2 _L3
_L1:
        viewgroup.setText(dialog.mBuilder.items[i]);
        viewgroup.setTextColor(dialog.mBuilder.itemColor);
        dialog.setTypeface(viewgroup, dialog.mBuilder.regularFont);
        view.setTag((new StringBuilder()).append(i).append(":").append(dialog.mBuilder.items[i]).toString());
        setupGravity((ViewGroup)view);
        if (android.os.Build.VERSION.SDK_INT < 21) goto _L5; else goto _L4
_L4:
        viewgroup = (ViewGroup)view;
        if (viewgroup.getChildCount() != 2) goto _L5; else goto _L6
_L6:
        if (!(viewgroup.getChildAt(0) instanceof CompoundButton)) goto _L8; else goto _L7
_L7:
        viewgroup.getChildAt(0).setBackground(null);
_L5:
        return view;
_L2:
        RadioButton radiobutton = (RadioButton)view.findViewById(R.id.control);
        boolean flag;
        if (dialog.mBuilder.selectedIndex == i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        MDTintHelper.setTint(radiobutton, dialog.mBuilder.widgetColor);
        radiobutton.setChecked(flag);
        continue; /* Loop/switch isn't completed */
_L3:
        CheckBox checkbox = (CheckBox)view.findViewById(R.id.control);
        boolean flag1 = dialog.selectedIndicesList.contains(Integer.valueOf(i));
        MDTintHelper.setTint(checkbox, dialog.mBuilder.widgetColor);
        checkbox.setChecked(flag1);
        continue; /* Loop/switch isn't completed */
_L8:
        if (!(viewgroup.getChildAt(1) instanceof CompoundButton)) goto _L5; else goto _L9
_L9:
        viewgroup.getChildAt(1).setBackground(null);
        return view;
        if (true) goto _L1; else goto _L10
_L10:
    }

    public boolean hasStableIds()
    {
        return true;
    }
}
