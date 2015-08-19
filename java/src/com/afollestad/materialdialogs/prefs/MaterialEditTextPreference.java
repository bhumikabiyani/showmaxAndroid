// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.prefs;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import com.afollestad.materialdialogs.MaterialDialog;
import com.afollestad.materialdialogs.internal.MDTintHelper;
import com.afollestad.materialdialogs.util.DialogUtils;
import java.lang.reflect.Method;

public class MaterialEditTextPreference extends EditTextPreference
{

    private final com.afollestad.materialdialogs.MaterialDialog.ButtonCallback callback;
    private int mColor;
    private MaterialDialog mDialog;

    public MaterialEditTextPreference(Context context)
    {
        this(context, null);
    }

    public MaterialEditTextPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mColor = 0;
        callback = new com.afollestad.materialdialogs.MaterialDialog.ButtonCallback() {

            final MaterialEditTextPreference this$0;

            public void onPositive(MaterialDialog materialdialog)
            {
                materialdialog = getEditText().getText().toString();
                if (callChangeListener(materialdialog) && isPersistent())
                {
                    setText(materialdialog);
                }
            }

            
            {
                this$0 = MaterialEditTextPreference.this;
                super();
            }
        };
        mColor = DialogUtils.resolveColor(context, com.afollestad.materialdialogs.R.attr.colorAccent);
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            mColor = DialogUtils.resolveColor(context, 0x1010435, mColor);
        }
    }

    private void requestInputMethod(Dialog dialog)
    {
        dialog.getWindow().setSoftInputMode(5);
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

    protected void onAddEditTextToDialogView(View view, EditText edittext)
    {
        if (edittext.getParent() != null)
        {
            ((ViewGroup)getEditText().getParent()).removeView(edittext);
        }
        ((ViewGroup)view).addView(edittext, new android.widget.LinearLayout.LayoutParams(-1, -2));
    }

    protected void onBindDialogView(View view)
    {
        getEditText().setText("");
        if (getText() != null)
        {
            getEditText().setText(getText());
        }
        android.view.ViewParent viewparent = getEditText().getParent();
        if (viewparent != view)
        {
            if (viewparent != null)
            {
                ((ViewGroup)viewparent).removeView(getEditText());
            }
            onAddEditTextToDialogView(view, getEditText());
        }
    }

    protected void showDialog(Bundle bundle)
    {
        com.afollestad.materialdialogs.MaterialDialog.Builder builder = (new com.afollestad.materialdialogs.MaterialDialog.Builder(getContext())).title(getDialogTitle()).icon(getDialogIcon()).positiveText(getPositiveButtonText()).negativeText(getNegativeButtonText()).callback(callback).dismissListener(this).showListener(new android.content.DialogInterface.OnShowListener() {

            final MaterialEditTextPreference this$0;

            public void onShow(DialogInterface dialoginterface)
            {
                if (getEditText().getText().length() > 0)
                {
                    getEditText().setSelection(getEditText().length());
                }
            }

            
            {
                this$0 = MaterialEditTextPreference.this;
                super();
            }
        });
        Object obj = LayoutInflater.from(getContext()).inflate(com.afollestad.materialdialogs.R.layout.md_stub_inputpref, null);
        onBindDialogView(((View) (obj)));
        MDTintHelper.setTint(getEditText(), mColor);
        Object obj1 = (TextView)((View) (obj)).findViewById(0x102000b);
        if (getDialogMessage() != null && getDialogMessage().toString().length() > 0)
        {
            ((TextView) (obj1)).setVisibility(0);
            ((TextView) (obj1)).setText(getDialogMessage());
        } else
        {
            ((TextView) (obj1)).setVisibility(8);
        }
        builder.customView(((View) (obj)), false);
        obj = getPreferenceManager();
        try
        {
            obj1 = obj.getClass().getDeclaredMethod("registerOnActivityDestroyListener", new Class[] {
                android/preference/PreferenceManager$OnActivityDestroyListener
            });
            ((Method) (obj1)).setAccessible(true);
            ((Method) (obj1)).invoke(obj, new Object[] {
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
        requestInputMethod(mDialog);
        mDialog.show();
    }

}
