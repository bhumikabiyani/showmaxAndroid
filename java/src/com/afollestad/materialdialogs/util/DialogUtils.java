// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.util;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.afollestad.materialdialogs.GravityEnum;
import com.afollestad.materialdialogs.MaterialDialog;

public class DialogUtils
{

    public DialogUtils()
    {
    }

    public static int adjustAlpha(int i, float f)
    {
        return Color.argb(Math.round((float)Color.alpha(i) * f), Color.red(i), Color.green(i), Color.blue(i));
    }

    private static int gravityEnumToAttrInt(GravityEnum gravityenum)
    {
        static class _cls3
        {

            static final int $SwitchMap$com$afollestad$materialdialogs$GravityEnum[];

            static 
            {
                $SwitchMap$com$afollestad$materialdialogs$GravityEnum = new int[GravityEnum.values().length];
                try
                {
                    $SwitchMap$com$afollestad$materialdialogs$GravityEnum[GravityEnum.CENTER.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$afollestad$materialdialogs$GravityEnum[GravityEnum.END.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls3..SwitchMap.com.afollestad.materialdialogs.GravityEnum[gravityenum.ordinal()])
        {
        default:
            return 0;

        case 1: // '\001'
            return 1;

        case 2: // '\002'
            return 2;
        }
    }

    public static void hideKeyboard(DialogInterface dialoginterface, com.afollestad.materialdialogs.MaterialDialog.Builder builder)
    {
        dialoginterface = (MaterialDialog)dialoginterface;
        if (dialoginterface.getInputEditText() == null)
        {
            return;
        } else
        {
            dialoginterface.getInputEditText().post(new Runnable(dialoginterface, builder) {

                final com.afollestad.materialdialogs.MaterialDialog.Builder val$builder;
                final MaterialDialog val$dialog;

                public void run()
                {
                    dialog.getInputEditText().requestFocus();
                    InputMethodManager inputmethodmanager = (InputMethodManager)builder.getContext().getSystemService("input_method");
                    if (inputmethodmanager != null)
                    {
                        inputmethodmanager.hideSoftInputFromWindow(dialog.getInputEditText().getWindowToken(), 0);
                    }
                }

            
            {
                dialog = materialdialog;
                builder = builder1;
                super();
            }
            });
            return;
        }
    }

    public static boolean isColorDark(int i)
    {
        return 1.0D - (0.29899999999999999D * (double)Color.red(i) + 0.58699999999999997D * (double)Color.green(i) + 0.114D * (double)Color.blue(i)) / 255D >= 0.5D;
    }

    public static boolean resolveBoolean(Context context, int i)
    {
        return resolveBoolean(context, i, false);
    }

    public static boolean resolveBoolean(Context context, int i, boolean flag)
    {
        context = context.getTheme().obtainStyledAttributes(new int[] {
            i
        });
        flag = context.getBoolean(0, flag);
        context.recycle();
        return flag;
        Exception exception;
        exception;
        context.recycle();
        throw exception;
    }

    public static int resolveColor(Context context, int i)
    {
        return resolveColor(context, i, 0);
    }

    public static int resolveColor(Context context, int i, int j)
    {
        context = context.getTheme().obtainStyledAttributes(new int[] {
            i
        });
        i = context.getColor(0, j);
        context.recycle();
        return i;
        Exception exception;
        exception;
        context.recycle();
        throw exception;
    }

    public static int resolveDimension(Context context, int i)
    {
        return resolveDimension(context, i, -1);
    }

    private static int resolveDimension(Context context, int i, int j)
    {
        context = context.getTheme().obtainStyledAttributes(new int[] {
            i
        });
        i = context.getDimensionPixelSize(0, j);
        context.recycle();
        return i;
        Exception exception;
        exception;
        context.recycle();
        throw exception;
    }

    public static Drawable resolveDrawable(Context context, int i)
    {
        return resolveDrawable(context, i, null);
    }

    private static Drawable resolveDrawable(Context context, int i, Drawable drawable)
    {
        TypedArray typedarray = context.getTheme().obtainStyledAttributes(new int[] {
            i
        });
        context = typedarray.getDrawable(0);
        Object obj = context;
        if (context == null)
        {
            obj = context;
            if (drawable != null)
            {
                obj = drawable;
            }
        }
        typedarray.recycle();
        return ((Drawable) (obj));
        context;
        typedarray.recycle();
        throw context;
    }

    public static GravityEnum resolveGravityEnum(Context context, int i, GravityEnum gravityenum)
    {
        context = context.getTheme().obtainStyledAttributes(new int[] {
            i
        });
        context.getInt(0, gravityEnumToAttrInt(gravityenum));
        JVM INSTR tableswitch 1 2: default 85
    //                   1 58
    //                   2 68;
           goto _L1 _L2 _L3
_L1:
        gravityenum = GravityEnum.START;
        context.recycle();
        return gravityenum;
_L2:
        gravityenum = GravityEnum.CENTER;
        context.recycle();
        return gravityenum;
_L3:
        gravityenum = GravityEnum.END;
        context.recycle();
        return gravityenum;
        gravityenum;
        context.recycle();
        throw gravityenum;
    }

    public static String resolveString(Context context, int i)
    {
        TypedValue typedvalue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedvalue, true);
        return (String)typedvalue.string;
    }

    public static void setBackgroundCompat(View view, Drawable drawable)
    {
        if (android.os.Build.VERSION.SDK_INT < 16)
        {
            view.setBackgroundDrawable(drawable);
            return;
        } else
        {
            view.setBackground(drawable);
            return;
        }
    }

    public static void showKeyboard(DialogInterface dialoginterface, com.afollestad.materialdialogs.MaterialDialog.Builder builder)
    {
        dialoginterface = (MaterialDialog)dialoginterface;
        if (dialoginterface.getInputEditText() == null)
        {
            return;
        } else
        {
            dialoginterface.getInputEditText().post(new Runnable(dialoginterface, builder) {

                final com.afollestad.materialdialogs.MaterialDialog.Builder val$builder;
                final MaterialDialog val$dialog;

                public void run()
                {
                    dialog.getInputEditText().requestFocus();
                    InputMethodManager inputmethodmanager = (InputMethodManager)builder.getContext().getSystemService("input_method");
                    if (inputmethodmanager != null)
                    {
                        inputmethodmanager.showSoftInput(dialog.getInputEditText(), 1);
                    }
                }

            
            {
                dialog = materialdialog;
                builder = builder1;
                super();
            }
            });
            return;
        }
    }
}
