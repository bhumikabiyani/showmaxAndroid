// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v7.widget.AppCompatEditText;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.SeekBar;
import com.afollestad.materialdialogs.util.DialogUtils;

public class MDTintHelper
{

    public MDTintHelper()
    {
    }

    private static ColorStateList createEditTextColorStateList(Context context, int i)
    {
        int ai[][] = new int[3][];
        int ai1[] = new int[3];
        ai[0] = (new int[] {
            0xfefeff62
        });
        ai1[0] = DialogUtils.resolveColor(context, com.afollestad.materialdialogs.R.attr.colorControlNormal);
        int j = 0 + 1;
        ai[j] = (new int[] {
            0xfefeff59, 0xfefeff64
        });
        ai1[j] = DialogUtils.resolveColor(context, com.afollestad.materialdialogs.R.attr.colorControlNormal);
        j++;
        ai[j] = new int[0];
        ai1[j] = i;
        return new ColorStateList(ai, ai1);
    }

    public static void setTint(CheckBox checkbox, int i)
    {
        int ai[] = {
            0xfefeff60
        };
        int ai1[] = {
            0x10100a0
        };
        int j = DialogUtils.resolveColor(checkbox.getContext(), com.afollestad.materialdialogs.R.attr.colorControlNormal);
        ColorStateList colorstatelist = new ColorStateList(new int[][] {
            ai, ai1
        }, new int[] {
            j, i
        });
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            checkbox.setButtonTintList(colorstatelist);
            return;
        } else
        {
            Drawable drawable = DrawableCompat.wrap(ContextCompat.getDrawable(checkbox.getContext(), com.afollestad.materialdialogs.R.drawable.abc_btn_check_material));
            DrawableCompat.setTintList(drawable, colorstatelist);
            checkbox.setButtonDrawable(drawable);
            return;
        }
    }

    public static void setTint(EditText edittext, int i)
    {
        ColorStateList colorstatelist = createEditTextColorStateList(edittext.getContext(), i);
        if (edittext instanceof AppCompatEditText)
        {
            ((AppCompatEditText)edittext).setSupportBackgroundTintList(colorstatelist);
        } else
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            edittext.setBackgroundTintList(colorstatelist);
            return;
        }
    }

    public static void setTint(ProgressBar progressbar, int i)
    {
        ColorStateList colorstatelist = ColorStateList.valueOf(i);
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            progressbar.setProgressTintList(colorstatelist);
            progressbar.setSecondaryProgressTintList(colorstatelist);
            progressbar.setIndeterminateTintList(colorstatelist);
        } else
        {
            android.graphics.PorterDuff.Mode mode = android.graphics.PorterDuff.Mode.SRC_IN;
            if (android.os.Build.VERSION.SDK_INT <= 10)
            {
                mode = android.graphics.PorterDuff.Mode.MULTIPLY;
            }
            if (progressbar.getIndeterminateDrawable() != null)
            {
                progressbar.getIndeterminateDrawable().setColorFilter(i, mode);
            }
            if (progressbar.getProgressDrawable() != null)
            {
                progressbar.getProgressDrawable().setColorFilter(i, mode);
                return;
            }
        }
    }

    public static void setTint(RadioButton radiobutton, int i)
    {
        int j = DialogUtils.resolveColor(radiobutton.getContext(), com.afollestad.materialdialogs.R.attr.colorControlNormal);
        ColorStateList colorstatelist = new ColorStateList(new int[][] {
            new int[] {
                0xfefeff60
            }, new int[] {
                0x10100a0
            }
        }, new int[] {
            j, i
        });
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            radiobutton.setButtonTintList(colorstatelist);
            return;
        } else
        {
            Drawable drawable = DrawableCompat.wrap(ContextCompat.getDrawable(radiobutton.getContext(), com.afollestad.materialdialogs.R.drawable.abc_btn_radio_material));
            DrawableCompat.setTintList(drawable, colorstatelist);
            radiobutton.setButtonDrawable(drawable);
            return;
        }
    }

    public static void setTint(SeekBar seekbar, int i)
    {
        ColorStateList colorstatelist = ColorStateList.valueOf(i);
        if (android.os.Build.VERSION.SDK_INT < 21) goto _L2; else goto _L1
_L1:
        seekbar.setThumbTintList(colorstatelist);
        seekbar.setProgressTintList(colorstatelist);
_L4:
        return;
_L2:
        if (android.os.Build.VERSION.SDK_INT <= 10)
        {
            break; /* Loop/switch isn't completed */
        }
        Drawable drawable = DrawableCompat.wrap(seekbar.getProgressDrawable());
        seekbar.setProgressDrawable(drawable);
        DrawableCompat.setTintList(drawable, colorstatelist);
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            Drawable drawable1 = DrawableCompat.wrap(seekbar.getThumb());
            DrawableCompat.setTintList(drawable1, colorstatelist);
            seekbar.setThumb(drawable1);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        android.graphics.PorterDuff.Mode mode = android.graphics.PorterDuff.Mode.SRC_IN;
        if (android.os.Build.VERSION.SDK_INT <= 10)
        {
            mode = android.graphics.PorterDuff.Mode.MULTIPLY;
        }
        if (seekbar.getIndeterminateDrawable() != null)
        {
            seekbar.getIndeterminateDrawable().setColorFilter(i, mode);
        }
        if (seekbar.getProgressDrawable() != null)
        {
            seekbar.getProgressDrawable().setColorFilter(i, mode);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }
}
