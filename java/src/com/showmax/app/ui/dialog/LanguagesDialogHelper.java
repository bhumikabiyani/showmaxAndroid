// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import com.afollestad.materialdialogs.MaterialDialog;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.model.catalogue.Language;
import java.util.ArrayList;

public class LanguagesDialogHelper
{
    public static interface LanguagesDialogListener
    {

        public abstract void onCancel(int i);

        public abstract void onLanguageSelected(int i, Language language);
    }


    public static final int LANGUAGE_DIALOG_AUDIO_LANGUAGE_MAIN_VIDEO = 25;
    public static final int LANGUAGE_DIALOG_AUDIO_LANGUAGE_TRAILER = 26;
    public static final int LANGUAGE_DIALOG_SUBTITLE_LANGUAGE = 27;
    private static final String TAG = com/showmax/app/ui/dialog/LanguagesDialogHelper.getSimpleName();
    private static LanguagesDialogHelper sInstance;
    private ArrayList mLanguages;
    private LanguagesDialogListener mLanguagesDialogListener;
    private int mType;

    private LanguagesDialogHelper()
    {
    }

    public static LanguagesDialogHelper getInstance()
    {
        if (sInstance == null)
        {
            sInstance = new LanguagesDialogHelper();
        }
        return sInstance;
    }

    private CharSequence[] toArray(ArrayList arraylist)
    {
        CharSequence acharsequence[];
        if (arraylist != null && !arraylist.isEmpty())
        {
            CharSequence acharsequence1[] = new CharSequence[arraylist.size()];
            int i = 0;
            do
            {
                acharsequence = acharsequence1;
                if (i >= arraylist.size())
                {
                    break;
                }
                acharsequence1[i] = ((Language)arraylist.get(i)).name;
                i++;
            } while (true);
        } else
        {
            acharsequence = null;
        }
        return acharsequence;
    }

    public void showLanguageDialog(Context context, int i, int j, ArrayList arraylist, LanguagesDialogListener languagesdialoglistener)
    {
        showLanguageDialog(context, i, j, arraylist, null, languagesdialoglistener);
    }

    public void showLanguageDialog(Context context, int i, int j, ArrayList arraylist, Language language, LanguagesDialogListener languagesdialoglistener)
    {
        mType = i;
        mLanguages = arraylist;
        mLanguagesDialogListener = languagesdialoglistener;
        context = new com.afollestad.materialdialogs.MaterialDialog.Builder(context);
        context.title(j);
        context.items(toArray(arraylist));
        if (language != null)
        {
            context.itemsCallbackSingleChoice(mLanguages.indexOf(language), new com.afollestad.materialdialogs.MaterialDialog.ListCallbackSingleChoice() {

                final LanguagesDialogHelper this$0;

                public boolean onSelection(MaterialDialog materialdialog, View view, int k, CharSequence charsequence)
                {
                    materialdialog = (Language)mLanguages.get(k);
                    MauLog.v("[%s]::[onSelection]::[%s]", new Object[] {
                        LanguagesDialogHelper.TAG, ((Language) (materialdialog)).name
                    });
                    if (mLanguagesDialogListener != null)
                    {
                        mLanguagesDialogListener.onLanguageSelected(mType, materialdialog);
                    }
                    return false;
                }

            
            {
                this$0 = LanguagesDialogHelper.this;
                super();
            }
            });
        } else
        {
            context.itemsCallback(new com.afollestad.materialdialogs.MaterialDialog.ListCallback() {

                final LanguagesDialogHelper this$0;

                public void onSelection(MaterialDialog materialdialog, View view, int k, CharSequence charsequence)
                {
                    materialdialog = (Language)mLanguages.get(k);
                    MauLog.v("[%s]::[onSelection]::[%s]", new Object[] {
                        LanguagesDialogHelper.TAG, ((Language) (materialdialog)).name
                    });
                    if (mLanguagesDialogListener != null)
                    {
                        mLanguagesDialogListener.onLanguageSelected(mType, materialdialog);
                    }
                }

            
            {
                this$0 = LanguagesDialogHelper.this;
                super();
            }
            });
        }
        context.cancelListener(new android.content.DialogInterface.OnCancelListener() {

            final LanguagesDialogHelper this$0;

            public void onCancel(DialogInterface dialoginterface)
            {
                MauLog.v("[%s]::[onCancel]", new Object[] {
                    LanguagesDialogHelper.TAG
                });
                if (mLanguagesDialogListener != null)
                {
                    mLanguagesDialogListener.onCancel(mType);
                    mLanguagesDialogListener = null;
                }
            }

            
            {
                this$0 = LanguagesDialogHelper.this;
                super();
            }
        });
        context.dismissListener(new android.content.DialogInterface.OnDismissListener() {

            final LanguagesDialogHelper this$0;

            public void onDismiss(DialogInterface dialoginterface)
            {
                MauLog.v("[%s]::[onDismiss]", new Object[] {
                    LanguagesDialogHelper.TAG
                });
                mType = 0;
                mLanguagesDialogListener = null;
                mLanguages = null;
                LanguagesDialogHelper.sInstance = null;
            }

            
            {
                this$0 = LanguagesDialogHelper.this;
                super();
            }
        });
        context.show();
    }




/*
    static ArrayList access$002(LanguagesDialogHelper languagesdialoghelper, ArrayList arraylist)
    {
        languagesdialoghelper.mLanguages = arraylist;
        return arraylist;
    }

*/




/*
    static LanguagesDialogListener access$202(LanguagesDialogHelper languagesdialoghelper, LanguagesDialogListener languagesdialoglistener)
    {
        languagesdialoghelper.mLanguagesDialogListener = languagesdialoglistener;
        return languagesdialoglistener;
    }

*/



/*
    static int access$302(LanguagesDialogHelper languagesdialoghelper, int i)
    {
        languagesdialoghelper.mType = i;
        return i;
    }

*/


/*
    static LanguagesDialogHelper access$402(LanguagesDialogHelper languagesdialoghelper)
    {
        sInstance = languagesdialoghelper;
        return languagesdialoghelper;
    }

*/
}
