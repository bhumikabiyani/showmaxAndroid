// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.common.internal.zzx;

public final class SignInButton extends FrameLayout
    implements android.view.View.OnClickListener
{

    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;
    private int mColor;
    private int mSize;
    private View zzLI;
    private android.view.View.OnClickListener zzLJ;

    public SignInButton(Context context)
    {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SignInButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        zzLJ = null;
        setStyle(0, 0);
    }

    private void zzN(Context context)
    {
        if (zzLI != null)
        {
            removeView(zzLI);
        }
        try
        {
            zzLI = zzac.zzb(context, mSize, mColor);
        }
        catch (com.google.android.gms.dynamic.zzg.zza zza1)
        {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            zzLI = zza(context, mSize, mColor);
        }
        addView(zzLI);
        zzLI.setEnabled(isEnabled());
        zzLI.setOnClickListener(this);
    }

    private static Button zza(Context context, int i, int j)
    {
        zzad zzad1 = new zzad(context);
        zzad1.zza(context.getResources(), i, j);
        return zzad1;
    }

    public void onClick(View view)
    {
        if (zzLJ != null && view == zzLI)
        {
            zzLJ.onClick(this);
        }
    }

    public void setColorScheme(int i)
    {
        setStyle(mSize, i);
    }

    public void setEnabled(boolean flag)
    {
        super.setEnabled(flag);
        zzLI.setEnabled(flag);
    }

    public void setOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        zzLJ = onclicklistener;
        if (zzLI != null)
        {
            zzLI.setOnClickListener(this);
        }
    }

    public void setSize(int i)
    {
        setStyle(i, mColor);
    }

    public void setStyle(int i, int j)
    {
        boolean flag;
        if (i >= 0 && i < 3)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Unknown button size %d", new Object[] {
            Integer.valueOf(i)
        });
        if (j >= 0 && j < 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Unknown color scheme %s", new Object[] {
            Integer.valueOf(j)
        });
        mSize = i;
        mColor = j;
        zzN(getContext());
    }
}
