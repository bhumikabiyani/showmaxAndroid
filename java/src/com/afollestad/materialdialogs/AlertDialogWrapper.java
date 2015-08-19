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
//            MaterialDialog

public class AlertDialogWrapper
{
    public static class Builder
    {

        private final MaterialDialog.Builder builder;
        private android.content.DialogInterface.OnClickListener negativeDialogListener;
        private android.content.DialogInterface.OnClickListener neutralDialogListener;
        private android.content.DialogInterface.OnClickListener onClickListener;
        private android.content.DialogInterface.OnClickListener positiveDialogListener;

        private void addButtonsCallback()
        {
            if (positiveDialogListener != null || negativeDialogListener != null)
            {
                builder.callback(new MaterialDialog.ButtonCallback() {

                    final Builder this$0;

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
                this$0 = Builder.this;
                super();
            }
                });
            }
        }

        private void addListCallbacks()
        {
            if (onClickListener != null)
            {
                builder.itemsCallback(new MaterialDialog.ListCallback() {

                    final Builder this$0;

                    public void onSelection(MaterialDialog materialdialog, View view, int i, CharSequence charsequence)
                    {
                        onClickListener.onClick(materialdialog, i);
                    }

            
            {
                this$0 = Builder.this;
                super();
            }
                });
            }
        }

        private void setUpMultiChoiceCallback(final boolean checkedItems[], android.content.DialogInterface.OnMultiChoiceClickListener onmultichoiceclicklistener)
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
            builder.itemsCallbackMultiChoice(ainteger, onmultichoiceclicklistener. new MaterialDialog.ListCallbackMultiChoice() {

                final Builder this$0;
                final boolean val$checkedItems[];
                final android.content.DialogInterface.OnMultiChoiceClickListener val$listener;

                public boolean onSelection(MaterialDialog materialdialog, Integer ainteger[], CharSequence acharsequence[])
                {
                    ainteger = Arrays.asList(ainteger);
                    if (checkedItems != null)
                    {
                        for (int i = 0; i < checkedItems.length; i++)
                        {
                            boolean flag = checkedItems[i];
                            checkedItems[i] = ainteger.contains(Integer.valueOf(i));
                            if (flag != checkedItems[i])
                            {
                                listener.onClick(materialdialog, i, checkedItems[i]);
                            }
                        }

                    }
                    return true;
                }

            
            {
                this$0 = final_builder;
                checkedItems = aflag;
                listener = android.content.DialogInterface.OnMultiChoiceClickListener.this;
                super();
            }
            });
        }

        public Builder alwaysCallMultiChoiceCallback()
        {
            builder.alwaysCallMultiChoiceCallback();
            return this;
        }

        public Builder alwaysCallSingleChoiceCallback()
        {
            builder.alwaysCallSingleChoiceCallback();
            return this;
        }

        public Builder autoDismiss(boolean flag)
        {
            builder.autoDismiss(flag);
            return this;
        }

        public Dialog create()
        {
            addButtonsCallback();
            addListCallbacks();
            return builder.build();
        }

        public Builder setAdapter(ListAdapter listadapter)
        {
            return setAdapter(listadapter, null);
        }

        public Builder setAdapter(ListAdapter listadapter, android.content.DialogInterface.OnClickListener onclicklistener)
        {
            builder.adapter = listadapter;
            builder.listCallbackCustom = onclicklistener. new MaterialDialog.ListCallback() {

                final Builder this$0;
                final android.content.DialogInterface.OnClickListener val$listener;

                public void onSelection(MaterialDialog materialdialog, View view, int i, CharSequence charsequence)
                {
                    listener.onClick(materialdialog, i);
                }

            
            {
                this$0 = final_builder;
                listener = android.content.DialogInterface.OnClickListener.this;
                super();
            }
            };
            return this;
        }

        public Builder setCancelable(boolean flag)
        {
            builder.cancelable(flag);
            return this;
        }

        public Builder setIcon(int i)
        {
            builder.iconRes(i);
            return this;
        }

        public Builder setIcon(Drawable drawable)
        {
            builder.icon(drawable);
            return this;
        }

        public Builder setIconAttribute(int i)
        {
            builder.iconAttr(i);
            return this;
        }

        public Builder setItems(int i, android.content.DialogInterface.OnClickListener onclicklistener)
        {
            builder.items(i);
            onClickListener = onclicklistener;
            return this;
        }

        public Builder setItems(CharSequence acharsequence[], android.content.DialogInterface.OnClickListener onclicklistener)
        {
            builder.items(acharsequence);
            onClickListener = onclicklistener;
            return this;
        }

        public Builder setMessage(int i)
        {
            builder.content(i);
            return this;
        }

        public Builder setMessage(CharSequence charsequence)
        {
            builder.content(charsequence);
            return this;
        }

        public Builder setMultiChoiceItems(int i, boolean aflag[], android.content.DialogInterface.OnMultiChoiceClickListener onmultichoiceclicklistener)
        {
            builder.items(i);
            setUpMultiChoiceCallback(aflag, onmultichoiceclicklistener);
            return this;
        }

        public Builder setMultiChoiceItems(String as[], boolean aflag[], android.content.DialogInterface.OnMultiChoiceClickListener onmultichoiceclicklistener)
        {
            builder.items(as);
            setUpMultiChoiceCallback(aflag, onmultichoiceclicklistener);
            return this;
        }

        public Builder setNegativeButton(int i, android.content.DialogInterface.OnClickListener onclicklistener)
        {
            builder.negativeText(i);
            negativeDialogListener = onclicklistener;
            return this;
        }

        public Builder setNegativeButton(CharSequence charsequence, android.content.DialogInterface.OnClickListener onclicklistener)
        {
            builder.negativeText(charsequence);
            negativeDialogListener = onclicklistener;
            return this;
        }

        public Builder setNeutralButton(int i, android.content.DialogInterface.OnClickListener onclicklistener)
        {
            builder.neutralText(i);
            neutralDialogListener = onclicklistener;
            return this;
        }

        public Builder setNeutralButton(CharSequence charsequence, android.content.DialogInterface.OnClickListener onclicklistener)
        {
            builder.neutralText(charsequence);
            neutralDialogListener = onclicklistener;
            return this;
        }

        public Builder setOnCancelListener(android.content.DialogInterface.OnCancelListener oncancellistener)
        {
            builder.cancelListener(oncancellistener);
            return this;
        }

        public Builder setOnDismissListener(android.content.DialogInterface.OnDismissListener ondismisslistener)
        {
            builder.dismissListener(ondismisslistener);
            return this;
        }

        public Builder setOnKeyListener(android.content.DialogInterface.OnKeyListener onkeylistener)
        {
            builder.keyListener(onkeylistener);
            return this;
        }

        public Builder setOnShowListener(android.content.DialogInterface.OnShowListener onshowlistener)
        {
            builder.showListener(onshowlistener);
            return this;
        }

        public Builder setPositiveButton(int i, android.content.DialogInterface.OnClickListener onclicklistener)
        {
            builder.positiveText(i);
            positiveDialogListener = onclicklistener;
            return this;
        }

        public Builder setPositiveButton(CharSequence charsequence, android.content.DialogInterface.OnClickListener onclicklistener)
        {
            builder.positiveText(charsequence);
            positiveDialogListener = onclicklistener;
            return this;
        }

        public Builder setSingleChoiceItems(int i, int j, android.content.DialogInterface.OnClickListener onclicklistener)
        {
            builder.items(i);
            builder.itemsCallbackSingleChoice(j, onclicklistener. new MaterialDialog.ListCallbackSingleChoice() {

                final Builder this$0;
                final android.content.DialogInterface.OnClickListener val$listener;

                public boolean onSelection(MaterialDialog materialdialog, View view, int i, CharSequence charsequence)
                {
                    listener.onClick(materialdialog, i);
                    return true;
                }

            
            {
                this$0 = final_builder;
                listener = android.content.DialogInterface.OnClickListener.this;
                super();
            }
            });
            return this;
        }

        public Builder setSingleChoiceItems(String as[], int i, android.content.DialogInterface.OnClickListener onclicklistener)
        {
            builder.items(as);
            builder.itemsCallbackSingleChoice(i, onclicklistener. new MaterialDialog.ListCallbackSingleChoice() {

                final Builder this$0;
                final android.content.DialogInterface.OnClickListener val$listener;

                public boolean onSelection(MaterialDialog materialdialog, View view, int i, CharSequence charsequence)
                {
                    listener.onClick(materialdialog, i);
                    return true;
                }

            
            {
                this$0 = final_builder;
                listener = android.content.DialogInterface.OnClickListener.this;
                super();
            }
            });
            return this;
        }

        public Builder setTitle(int i)
        {
            builder.title(i);
            return this;
        }

        public Builder setTitle(CharSequence charsequence)
        {
            builder.title(charsequence);
            return this;
        }

        public Builder setView(View view)
        {
            builder.customView(view, false);
            return this;
        }

        public Dialog show()
        {
            Dialog dialog = create();
            dialog.show();
            return dialog;
        }





        public Builder(Context context)
        {
            builder = new MaterialDialog.Builder(context);
        }
    }


    public AlertDialogWrapper()
    {
    }
}
