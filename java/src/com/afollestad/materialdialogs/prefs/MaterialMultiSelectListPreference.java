// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.prefs;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.preference.MultiSelectListPreference;
import android.util.AttributeSet;
import com.afollestad.materialdialogs.MaterialDialog;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class MaterialMultiSelectListPreference extends MultiSelectListPreference
{

    private Context context;
    private MaterialDialog mDialog;

    public MaterialMultiSelectListPreference(Context context1)
    {
        this(context1, null);
    }

    public MaterialMultiSelectListPreference(Context context1, AttributeSet attributeset)
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

    protected void showDialog(Bundle bundle)
    {
        Object obj = new ArrayList();
        Object obj1 = getValues().iterator();
        do
        {
            if (!((Iterator) (obj1)).hasNext())
            {
                break;
            }
            String s = (String)((Iterator) (obj1)).next();
            if (findIndexOfValue(s) >= 0)
            {
                ((List) (obj)).add(Integer.valueOf(findIndexOfValue(s)));
            }
        } while (true);
        obj = (new com.afollestad.materialdialogs.MaterialDialog.Builder(context)).title(getDialogTitle()).content(getDialogMessage()).icon(getDialogIcon()).negativeText(getNegativeButtonText()).positiveText(getPositiveButtonText()).items(getEntries()).itemsCallbackMultiChoice((Integer[])((List) (obj)).toArray(new Integer[((List) (obj)).size()]), new com.afollestad.materialdialogs.MaterialDialog.ListCallbackMultiChoice() {

            final MaterialMultiSelectListPreference this$0;

            public boolean onSelection(MaterialDialog materialdialog, Integer ainteger[], CharSequence acharsequence[])
            {
                onClick(null, -1);
                materialdialog.dismiss();
                materialdialog = new HashSet();
                int j = ainteger.length;
                for (int i = 0; i < j; i++)
                {
                    int k = ainteger[i].intValue();
                    materialdialog.add(getEntryValues()[k].toString());
                }

                if (callChangeListener(materialdialog))
                {
                    setValues(materialdialog);
                }
                return true;
            }

            
            {
                this$0 = MaterialMultiSelectListPreference.this;
                super();
            }
        }).dismissListener(this);
        obj1 = onCreateDialogView();
        if (obj1 != null)
        {
            onBindDialogView(((android.view.View) (obj1)));
            ((com.afollestad.materialdialogs.MaterialDialog.Builder) (obj)).customView(((android.view.View) (obj1)), false);
        } else
        {
            ((com.afollestad.materialdialogs.MaterialDialog.Builder) (obj)).content(getDialogMessage());
        }
        obj1 = getPreferenceManager();
        try
        {
            Method method = obj1.getClass().getDeclaredMethod("registerOnActivityDestroyListener", new Class[] {
                android/preference/PreferenceManager$OnActivityDestroyListener
            });
            method.setAccessible(true);
            method.invoke(obj1, new Object[] {
                this
            });
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        mDialog = ((com.afollestad.materialdialogs.MaterialDialog.Builder) (obj)).build();
        if (bundle != null)
        {
            mDialog.onRestoreInstanceState(bundle);
        }
        mDialog.show();
    }

}
