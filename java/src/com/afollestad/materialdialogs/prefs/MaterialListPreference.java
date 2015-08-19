// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.prefs;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.preference.ListPreference;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.afollestad.materialdialogs.MaterialDialog;
import java.lang.reflect.Method;

public class MaterialListPreference extends ListPreference
{

    private Context context;
    private MaterialDialog mDialog;

    public MaterialListPreference(Context context1)
    {
        super(context1);
        init(context1);
    }

    public MaterialListPreference(Context context1, AttributeSet attributeset)
    {
        super(context1, attributeset);
        init(context1);
    }

    private void init(Context context1)
    {
        context = context1;
        if (android.os.Build.VERSION.SDK_INT <= 10)
        {
            setWidgetLayoutResource(0);
        }
    }

    public Dialog getDialog()
    {
        return mDialog;
    }

    public void onActivityDestroy()
    {
        super.onActivityDestroy();
        if (mDialog != null && mDialog.isShowing())
        {
            mDialog.dismiss();
        }
    }

    public void setEntries(CharSequence acharsequence[])
    {
        super.setEntries(acharsequence);
        if (mDialog != null)
        {
            mDialog.setItems(acharsequence);
        }
    }

    public void setValue(String s)
    {
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            super.setValue(s);
        } else
        {
            String s1 = getValue();
            super.setValue(s);
            if (!TextUtils.equals(s, s1))
            {
                notifyChanged();
                return;
            }
        }
    }

    protected void showDialog(Bundle bundle)
    {
        if (getEntries() == null || getEntryValues() == null)
        {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        int i = findIndexOfValue(getValue());
        com.afollestad.materialdialogs.MaterialDialog.Builder builder = (new com.afollestad.materialdialogs.MaterialDialog.Builder(context)).title(getDialogTitle()).content(getDialogMessage()).icon(getDialogIcon()).negativeText(getNegativeButtonText()).items(getEntries()).autoDismiss(true).itemsCallbackSingleChoice(i, new com.afollestad.materialdialogs.MaterialDialog.ListCallbackSingleChoice() {

            final MaterialListPreference this$0;

            public boolean onSelection(MaterialDialog materialdialog, View view, int j, CharSequence charsequence)
            {
                onClick(null, -1);
                if (j >= 0 && getEntryValues() != null)
                {
                    materialdialog = getEntryValues()[j].toString();
                    if (callChangeListener(materialdialog) && isPersistent())
                    {
                        setValue(materialdialog);
                    }
                }
                return true;
            }

            
            {
                this$0 = MaterialListPreference.this;
                super();
            }
        });
        Object obj = onCreateDialogView();
        if (obj != null)
        {
            onBindDialogView(((View) (obj)));
            builder.customView(((View) (obj)), false);
        } else
        {
            builder.content(getDialogMessage());
        }
        obj = getPreferenceManager();
        try
        {
            Method method = obj.getClass().getDeclaredMethod("registerOnActivityDestroyListener", new Class[] {
                android/preference/PreferenceManager$OnActivityDestroyListener
            });
            method.setAccessible(true);
            method.invoke(obj, new Object[] {
                this
            });
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        mDialog = builder.build();
        if (bundle != null)
        {
            mDialog.onRestoreInstanceState(bundle);
        }
        mDialog.show();
    }

}
