// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ListAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// Referenced classes of package com.afollestad.materialdialogs:
//            AlertDialogWrapper, MaterialDialog

public static class t>
{

    private final create builder;
    private android.content.ener negativeDialogListener;
    private android.content.ener neutralDialogListener;
    private android.content.ener onClickListener;
    private android.content.ener positiveDialogListener;

    private void addButtonsCallback()
    {
        if (positiveDialogListener != null || negativeDialogListener != null)
        {
            builder.back(new MaterialDialog.ButtonCallback() {

                final AlertDialogWrapper.Builder this$0;

                public void onNegative(MaterialDialog materialdialog)
                {
                    if (negativeDialogListener != null)
                    {
                        negativeDialogListener.onClick(materialdialog, -2);
                    }
                }

                public void onNeutral(MaterialDialog materialdialog)
                {
                    if (neutralDialogListener != null)
                    {
                        neutralDialogListener.onClick(materialdialog, -3);
                    }
                }

                public void onPositive(MaterialDialog materialdialog)
                {
                    if (positiveDialogListener != null)
                    {
                        positiveDialogListener.onClick(materialdialog, -1);
                    }
                }

            
            {
                this$0 = AlertDialogWrapper.Builder.this;
                super();
            }
            });
        }
    }

    private void addListCallbacks()
    {
        if (onClickListener != null)
        {
            builder.sCallback(new MaterialDialog.ListCallback() {

                final AlertDialogWrapper.Builder this$0;

                public void onSelection(MaterialDialog materialdialog, View view, int i, CharSequence charsequence)
                {
                    onClickListener.onClick(materialdialog, i);
                }

            
            {
                this$0 = AlertDialogWrapper.Builder.this;
                super();
            }
            });
        }
    }

    private void setUpMultiChoiceCallback(final boolean checkedItems[], final android.content.ceClickListener listener)
    {
        Integer ainteger[] = null;
        if (checkedItems != null)
        {
            ainteger = new ArrayList();
            for (int i = 0; i < checkedItems.length; i++)
            {
                if (checkedItems[i])
                {
                    ainteger.add(Integer.valueOf(i));
                }
            }

            ainteger = (Integer[])ainteger.toArray(new Integer[ainteger.size()]);
        }
        builder.sCallbackMultiChoice(ainteger, new MaterialDialog.ListCallbackMultiChoice() {

            final AlertDialogWrapper.Builder this$0;
            final boolean val$checkedItems[];
            final android.content.DialogInterface.OnMultiChoiceClickListener val$listener;

            public boolean onSelection(MaterialDialog materialdialog, Integer ainteger1[], CharSequence acharsequence[])
            {
                ainteger1 = Arrays.asList(ainteger1);
                if (checkedItems != null)
                {
                    for (int j = 0; j < checkedItems.length; j++)
                    {
                        boolean flag = checkedItems[j];
                        checkedItems[j] = ainteger1.contains(Integer.valueOf(j));
                        if (flag != checkedItems[j])
                        {
                            listener.onClick(materialdialog, j, checkedItems[j]);
                        }
                    }

                }
                return true;
            }

            
            {
                this$0 = AlertDialogWrapper.Builder.this;
                checkedItems = aflag;
                listener = onmultichoiceclicklistener;
                super();
            }
        });
    }

    public  alwaysCallMultiChoiceCallback()
    {
        builder.ysCallMultiChoiceCallback();
        return this;
    }

    public ysCallMultiChoiceCallback alwaysCallSingleChoiceCallback()
    {
        builder.ysCallSingleChoiceCallback();
        return this;
    }

    public ysCallSingleChoiceCallback autoDismiss(boolean flag)
    {
        builder.Dismiss(flag);
        return this;
    }

    public Dialog create()
    {
        addButtonsCallback();
        addListCallbacks();
        return builder.d();
    }

    public d setAdapter(ListAdapter listadapter)
    {
        return setAdapter(listadapter, null);
    }

    public setAdapter setAdapter(ListAdapter listadapter, final android.content.ener listener)
    {
        builder.ter = listadapter;
        builder.CallbackCustom = new MaterialDialog.ListCallback() {

            final AlertDialogWrapper.Builder this$0;
            final android.content.DialogInterface.OnClickListener val$listener;

            public void onSelection(MaterialDialog materialdialog, View view, int i, CharSequence charsequence)
            {
                listener.onClick(materialdialog, i);
            }

            
            {
                this$0 = AlertDialogWrapper.Builder.this;
                listener = onclicklistener;
                super();
            }
        };
        return this;
    }

    public _cls1.val.listener setCancelable(boolean flag)
    {
        builder.elable(flag);
        return this;
    }

    public elable setIcon(int i)
    {
        builder.Res(i);
        return this;
    }

    public Res setIcon(Drawable drawable)
    {
        builder.(drawable);
        return this;
    }

    public  setIconAttribute(int i)
    {
        builder.Attr(i);
        return this;
    }

    public Attr setItems(int i, android.content.ener ener)
    {
        builder.s(i);
        onClickListener = ener;
        return this;
    }

    public onClickListener setItems(CharSequence acharsequence[], android.content.ener ener)
    {
        builder.s(acharsequence);
        onClickListener = ener;
        return this;
    }

    public onClickListener setMessage(int i)
    {
        builder.ent(i);
        return this;
    }

    public ent setMessage(CharSequence charsequence)
    {
        builder.ent(charsequence);
        return this;
    }

    public  setMultiChoiceItems(int i, boolean aflag[], android.content.ceClickListener ceclicklistener)
    {
        builder.s(i);
        setUpMultiChoiceCallback(aflag, ceclicklistener);
        return this;
    }

    public  setMultiChoiceItems(String as[], boolean aflag[], android.content.ceClickListener ceclicklistener)
    {
        builder.s(as);
        setUpMultiChoiceCallback(aflag, ceclicklistener);
        return this;
    }

    public  setNegativeButton(int i, android.content.ener ener)
    {
        builder.tiveText(i);
        negativeDialogListener = ener;
        return this;
    }

    public negativeDialogListener setNegativeButton(CharSequence charsequence, android.content.ener ener)
    {
        builder.tiveText(charsequence);
        negativeDialogListener = ener;
        return this;
    }

    public negativeDialogListener setNeutralButton(int i, android.content.ener ener)
    {
        builder.ralText(i);
        neutralDialogListener = ener;
        return this;
    }

    public neutralDialogListener setNeutralButton(CharSequence charsequence, android.content.ener ener)
    {
        builder.ralText(charsequence);
        neutralDialogListener = ener;
        return this;
    }

    public neutralDialogListener setOnCancelListener(android.content.tener tener)
    {
        builder.elListener(tener);
        return this;
    }

    public elListener setOnDismissListener(android.content.stener stener)
    {
        builder.issListener(stener);
        return this;
    }

    public issListener setOnKeyListener(android.content.er er)
    {
        builder.istener(er);
        return this;
    }

    public istener setOnShowListener(android.content.ner ner)
    {
        builder.Listener(ner);
        return this;
    }

    public Listener setPositiveButton(int i, android.content.ener ener)
    {
        builder.tiveText(i);
        positiveDialogListener = ener;
        return this;
    }

    public positiveDialogListener setPositiveButton(CharSequence charsequence, android.content.ener ener)
    {
        builder.tiveText(charsequence);
        positiveDialogListener = ener;
        return this;
    }

    public positiveDialogListener setSingleChoiceItems(int i, int j, final android.content.ener listener)
    {
        builder.s(i);
        builder.sCallbackSingleChoice(j, new MaterialDialog.ListCallbackSingleChoice() {

            final AlertDialogWrapper.Builder this$0;
            final android.content.DialogInterface.OnClickListener val$listener;

            public boolean onSelection(MaterialDialog materialdialog, View view, int k, CharSequence charsequence)
            {
                listener.onClick(materialdialog, k);
                return true;
            }

            
            {
                this$0 = AlertDialogWrapper.Builder.this;
                listener = onclicklistener;
                super();
            }
        });
        return this;
    }

    public _cls6.val.listener setSingleChoiceItems(String as[], int i, final android.content.ener listener)
    {
        builder.s(as);
        builder.sCallbackSingleChoice(i, new MaterialDialog.ListCallbackSingleChoice() {

            final AlertDialogWrapper.Builder this$0;
            final android.content.DialogInterface.OnClickListener val$listener;

            public boolean onSelection(MaterialDialog materialdialog, View view, int j, CharSequence charsequence)
            {
                listener.onClick(materialdialog, j);
                return true;
            }

            
            {
                this$0 = AlertDialogWrapper.Builder.this;
                listener = onclicklistener;
                super();
            }
        });
        return this;
    }

    public _cls5.val.listener setTitle(int i)
    {
        builder.e(i);
        return this;
    }

    public e setTitle(CharSequence charsequence)
    {
        builder.e(charsequence);
        return this;
    }

    public e setView(View view)
    {
        builder.omView(view, false);
        return this;
    }

    public Dialog show()
    {
        Dialog dialog = create();
        dialog.show();
        return dialog;
    }





    public _cls6.val.listener(Context context)
    {
        builder = new t>(context);
    }
}
