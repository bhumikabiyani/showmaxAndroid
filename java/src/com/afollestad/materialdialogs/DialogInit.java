// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.text.method.LinkMovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import com.afollestad.materialdialogs.internal.MDButton;
import com.afollestad.materialdialogs.internal.MDRootLayout;
import com.afollestad.materialdialogs.internal.MDTintHelper;
import com.afollestad.materialdialogs.simplelist.MaterialSimpleListAdapter;
import com.afollestad.materialdialogs.util.DialogUtils;
import java.util.ArrayList;
import java.util.Arrays;

// Referenced classes of package com.afollestad.materialdialogs:
//            Theme, MaterialDialog, GravityEnum, DialogAction, 
//            MaterialDialogAdapter

class DialogInit
{

    DialogInit()
    {
    }

    private static ColorStateList getActionTextStateList(Context context, int i)
    {
        int k = DialogUtils.resolveColor(context, 0x1010036);
        int j = i;
        if (i == 0)
        {
            j = k;
        }
        context = new int[0];
        i = DialogUtils.adjustAlpha(j, 0.4F);
        return new ColorStateList(new int[][] {
            new int[] {
                0xfefeff62
            }, context
        }, new int[] {
            i, j
        });
    }

    public static int getInflateLayout(MaterialDialog.Builder builder)
    {
        if (builder.customView != null)
        {
            return R.layout.md_dialog_custom;
        }
        if (builder.items != null && builder.items.length > 0 || builder.adapter != null)
        {
            return R.layout.md_dialog_list;
        }
        if (builder.progress > -2)
        {
            return R.layout.md_dialog_progress;
        }
        if (builder.indeterminateProgress)
        {
            return R.layout.md_dialog_progress_indeterminate;
        }
        if (builder.inputCallback != null)
        {
            return R.layout.md_dialog_input;
        } else
        {
            return R.layout.md_dialog_basic;
        }
    }

    public static int getTheme(MaterialDialog.Builder builder)
    {
        Object obj = builder.context;
        int i = R.attr.md_dark_theme;
        boolean flag;
        if (builder.theme == Theme.DARK)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        flag = DialogUtils.resolveBoolean(((Context) (obj)), i, flag);
        if (flag)
        {
            obj = Theme.DARK;
        } else
        {
            obj = Theme.LIGHT;
        }
        builder.theme = ((Theme) (obj));
        if (flag)
        {
            return R.style.MD_Dark;
        } else
        {
            return R.style.MD_Light;
        }
    }

    public static void init(MaterialDialog materialdialog)
    {
        MaterialDialog.Builder builder = materialdialog.mBuilder;
        materialdialog.setCancelable(builder.cancelable);
        if (builder.backgroundColor == 0)
        {
            builder.backgroundColor = DialogUtils.resolveColor(builder.context, R.attr.md_background_color);
        }
        if (builder.backgroundColor != 0)
        {
            materialdialog.view.setBackgroundColor(builder.backgroundColor);
        }
        builder.positiveColor = DialogUtils.resolveColor(builder.context, R.attr.md_positive_color, builder.positiveColor);
        builder.neutralColor = DialogUtils.resolveColor(builder.context, R.attr.md_neutral_color, builder.neutralColor);
        builder.negativeColor = DialogUtils.resolveColor(builder.context, R.attr.md_negative_color, builder.negativeColor);
        builder.widgetColor = DialogUtils.resolveColor(builder.context, R.attr.md_widget_color, builder.widgetColor);
        int i;
        boolean flag;
        if (!builder.titleColorSet)
        {
            i = DialogUtils.resolveColor(builder.context, 0x1010036);
            builder.titleColor = DialogUtils.resolveColor(builder.context, R.attr.md_title_color, i);
            MDButton mdbutton;
            FrameLayout framelayout;
            Resources resources;
            int j;
            boolean flag1;
            if (builder.titleColor == i)
            {
                if (DialogUtils.isColorDark(builder.titleColor))
                {
                    if (builder.theme == Theme.DARK)
                    {
                        builder.titleColor = DialogUtils.resolveColor(builder.context, 0x1010039);
                    }
                } else
                if (builder.theme == Theme.LIGHT)
                {
                    builder.titleColor = DialogUtils.resolveColor(builder.context, 0x1010039);
                }
            }
        }
        if (!builder.contentColorSet)
        {
            i = DialogUtils.resolveColor(builder.context, 0x1010038);
            builder.contentColor = DialogUtils.resolveColor(builder.context, R.attr.md_content_color, i);
            if (builder.contentColor == i)
            {
                if (DialogUtils.isColorDark(builder.contentColor))
                {
                    if (builder.theme == Theme.DARK)
                    {
                        builder.contentColor = DialogUtils.resolveColor(builder.context, 0x101003a);
                    }
                } else
                if (builder.theme == Theme.LIGHT)
                {
                    builder.contentColor = DialogUtils.resolveColor(builder.context, 0x101003a);
                }
            }
        }
        if (!builder.itemColorSet)
        {
            builder.itemColor = DialogUtils.resolveColor(builder.context, R.attr.md_item_color, builder.contentColor);
        }
        materialdialog.title = (TextView)materialdialog.view.findViewById(R.id.title);
        materialdialog.icon = (ImageView)materialdialog.view.findViewById(R.id.icon);
        materialdialog.titleFrame = materialdialog.view.findViewById(R.id.titleFrame);
        materialdialog.content = (TextView)materialdialog.view.findViewById(R.id.content);
        materialdialog.listView = (ListView)materialdialog.view.findViewById(R.id.contentListView);
        materialdialog.positiveButton = (MDButton)materialdialog.view.findViewById(R.id.buttonDefaultPositive);
        materialdialog.neutralButton = (MDButton)materialdialog.view.findViewById(R.id.buttonDefaultNeutral);
        materialdialog.negativeButton = (MDButton)materialdialog.view.findViewById(R.id.buttonDefaultNegative);
        if (builder.inputCallback != null && builder.positiveText == null)
        {
            builder.positiveText = builder.context.getText(0x104000a);
        }
        mdbutton = materialdialog.positiveButton;
        if (builder.positiveText != null)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        mdbutton.setVisibility(i);
        mdbutton = materialdialog.neutralButton;
        if (builder.neutralText != null)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        mdbutton.setVisibility(i);
        mdbutton = materialdialog.negativeButton;
        if (builder.negativeText != null)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        mdbutton.setVisibility(i);
        if (builder.icon != null)
        {
            materialdialog.icon.setVisibility(0);
            materialdialog.icon.setImageDrawable(builder.icon);
        } else
        {
            obj = DialogUtils.resolveDrawable(builder.context, R.attr.md_icon);
            if (obj != null)
            {
                materialdialog.icon.setVisibility(0);
                materialdialog.icon.setImageDrawable(((android.graphics.drawable.Drawable) (obj)));
            } else
            {
                materialdialog.icon.setVisibility(8);
            }
        }
        j = builder.maxIconSize;
        i = j;
        if (j == -1)
        {
            i = DialogUtils.resolveDimension(builder.context, R.attr.md_icon_max_size);
        }
        if (builder.limitIconToDefaultSize || DialogUtils.resolveBoolean(builder.context, R.attr.md_icon_limit_icon_to_default_size))
        {
            i = builder.context.getResources().getDimensionPixelSize(R.dimen.md_icon_max_size);
        }
        if (i > -1)
        {
            materialdialog.icon.setAdjustViewBounds(true);
            materialdialog.icon.setMaxHeight(i);
            materialdialog.icon.setMaxWidth(i);
            materialdialog.icon.requestLayout();
        }
        i = DialogUtils.resolveColor(materialdialog.getContext(), R.attr.md_divider);
        builder.dividerColor = DialogUtils.resolveColor(builder.context, R.attr.md_divider_color, i);
        materialdialog.view.setDividerColor(builder.dividerColor);
        if (builder.title == null)
        {
            materialdialog.titleFrame.setVisibility(8);
        } else
        {
            materialdialog.title.setText(builder.title);
            materialdialog.setTypeface(materialdialog.title, builder.mediumFont);
            materialdialog.title.setTextColor(builder.titleColor);
            materialdialog.title.setGravity(builder.titleGravity.getGravityInt());
            if (android.os.Build.VERSION.SDK_INT >= 17)
            {
                materialdialog.title.setTextAlignment(builder.titleGravity.getTextAlignment());
            }
        }
        if (materialdialog.content != null && builder.content != null)
        {
            materialdialog.content.setText(builder.content);
            materialdialog.content.setMovementMethod(new LinkMovementMethod());
            materialdialog.setTypeface(materialdialog.content, builder.regularFont);
            materialdialog.content.setLineSpacing(0.0F, builder.contentLineSpacingMultiplier);
            if (builder.positiveColor == 0)
            {
                materialdialog.content.setLinkTextColor(DialogUtils.resolveColor(materialdialog.getContext(), 0x1010036));
            } else
            {
                materialdialog.content.setLinkTextColor(builder.positiveColor);
            }
            materialdialog.content.setTextColor(builder.contentColor);
            materialdialog.content.setGravity(builder.contentGravity.getGravityInt());
            if (android.os.Build.VERSION.SDK_INT >= 17)
            {
                materialdialog.content.setTextAlignment(builder.contentGravity.getTextAlignment());
            }
        } else
        if (materialdialog.content != null)
        {
            materialdialog.content.setVisibility(8);
        }
        materialdialog.view.setButtonGravity(builder.buttonsGravity);
        materialdialog.view.setButtonStackedGravity(builder.btnStackedGravity);
        materialdialog.view.setForceStack(builder.forceStacking);
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            flag1 = DialogUtils.resolveBoolean(builder.context, 0x101038c, true);
            flag = flag1;
            if (flag1)
            {
                flag = DialogUtils.resolveBoolean(builder.context, R.attr.textAllCaps, true);
            }
        } else
        {
            flag = DialogUtils.resolveBoolean(builder.context, R.attr.textAllCaps, true);
        }
        mdbutton = materialdialog.positiveButton;
        materialdialog.setTypeface(mdbutton, builder.mediumFont);
        mdbutton.setAllCapsCompat(flag);
        mdbutton.setText(builder.positiveText);
        mdbutton.setTextColor(getActionTextStateList(builder.context, builder.positiveColor));
        materialdialog.positiveButton.setStackedSelector(materialdialog.getButtonSelector(DialogAction.POSITIVE, true));
        materialdialog.positiveButton.setDefaultSelector(materialdialog.getButtonSelector(DialogAction.POSITIVE, false));
        materialdialog.positiveButton.setTag(DialogAction.POSITIVE);
        materialdialog.positiveButton.setOnClickListener(materialdialog);
        materialdialog.positiveButton.setVisibility(0);
        mdbutton = materialdialog.negativeButton;
        materialdialog.setTypeface(mdbutton, builder.mediumFont);
        mdbutton.setAllCapsCompat(flag);
        mdbutton.setText(builder.negativeText);
        mdbutton.setTextColor(getActionTextStateList(builder.context, builder.negativeColor));
        materialdialog.negativeButton.setStackedSelector(materialdialog.getButtonSelector(DialogAction.NEGATIVE, true));
        materialdialog.negativeButton.setDefaultSelector(materialdialog.getButtonSelector(DialogAction.NEGATIVE, false));
        materialdialog.negativeButton.setTag(DialogAction.NEGATIVE);
        materialdialog.negativeButton.setOnClickListener(materialdialog);
        materialdialog.negativeButton.setVisibility(0);
        mdbutton = materialdialog.neutralButton;
        materialdialog.setTypeface(mdbutton, builder.mediumFont);
        mdbutton.setAllCapsCompat(flag);
        mdbutton.setText(builder.neutralText);
        mdbutton.setTextColor(getActionTextStateList(builder.context, builder.neutralColor));
        materialdialog.neutralButton.setStackedSelector(materialdialog.getButtonSelector(DialogAction.NEUTRAL, true));
        materialdialog.neutralButton.setDefaultSelector(materialdialog.getButtonSelector(DialogAction.NEUTRAL, false));
        materialdialog.neutralButton.setTag(DialogAction.NEUTRAL);
        materialdialog.neutralButton.setOnClickListener(materialdialog);
        materialdialog.neutralButton.setVisibility(0);
        if (builder.listCallbackMultiChoice != null)
        {
            materialdialog.selectedIndicesList = new ArrayList();
        }
        if (materialdialog.listView != null && (builder.items != null && builder.items.length > 0 || builder.adapter != null))
        {
            materialdialog.listView.setSelector(materialdialog.getListSelector());
            if (builder.adapter == null)
            {
                if (builder.listCallbackSingleChoice != null)
                {
                    materialdialog.listType = MaterialDialog.ListType.SINGLE;
                } else
                if (builder.listCallbackMultiChoice != null)
                {
                    materialdialog.listType = MaterialDialog.ListType.MULTI;
                    if (builder.selectedIndices != null)
                    {
                        materialdialog.selectedIndicesList = new ArrayList(Arrays.asList(builder.selectedIndices));
                    }
                } else
                {
                    materialdialog.listType = MaterialDialog.ListType.REGULAR;
                }
                builder.adapter = new MaterialDialogAdapter(materialdialog, MaterialDialog.ListType.getLayoutForType(materialdialog.listType), R.id.title, builder.items);
            } else
            if (builder.adapter instanceof MaterialSimpleListAdapter)
            {
                ((MaterialSimpleListAdapter)builder.adapter).setDialog(materialdialog);
            }
        }
        setupProgressDialog(materialdialog);
        setupInputDialog(materialdialog);
        if (builder.customView != null)
        {
            framelayout = (FrameLayout)materialdialog.view.findViewById(R.id.customViewFrame);
            materialdialog.customViewFrame = framelayout;
            View view = builder.customView;
            Object obj = view;
            if (builder.wrapCustomViewInScroll)
            {
                resources = materialdialog.getContext().getResources();
                i = resources.getDimensionPixelSize(R.dimen.md_dialog_frame_margin);
                obj = new ScrollView(materialdialog.getContext());
                int k = resources.getDimensionPixelSize(R.dimen.md_content_padding_top);
                int l = resources.getDimensionPixelSize(R.dimen.md_content_padding_bottom);
                ((ScrollView) (obj)).setClipToPadding(false);
                if (view instanceof EditText)
                {
                    ((ScrollView) (obj)).setPadding(i, k, i, l);
                } else
                {
                    ((ScrollView) (obj)).setPadding(0, k, 0, l);
                    view.setPadding(i, 0, i, 0);
                }
                ((ScrollView) (obj)).addView(view, new android.widget.FrameLayout.LayoutParams(-1, -2));
            }
            framelayout.addView(((View) (obj)), new android.view.ViewGroup.LayoutParams(-1, -2));
        }
        materialdialog.setOnShowListenerInternal();
        if (builder.showListener != null)
        {
            materialdialog.setOnShowListener(builder.showListener);
        }
        if (builder.cancelListener != null)
        {
            materialdialog.setOnCancelListener(builder.cancelListener);
        }
        if (builder.dismissListener != null)
        {
            materialdialog.setOnDismissListener(builder.dismissListener);
        }
        if (builder.keyListener != null)
        {
            materialdialog.setOnKeyListener(builder.keyListener);
        }
        materialdialog.invalidateList();
        materialdialog.setViewInternal(materialdialog.view);
        materialdialog.checkIfListInitScroll();
    }

    private static void setupInputDialog(MaterialDialog materialdialog)
    {
        MaterialDialog.Builder builder = materialdialog.mBuilder;
        materialdialog.input = (EditText)materialdialog.view.findViewById(0x1020009);
        if (materialdialog.input == null)
        {
            return;
        }
        materialdialog.setTypeface(materialdialog.input, builder.regularFont);
        if (builder.inputPrefill != null)
        {
            materialdialog.input.setText(builder.inputPrefill);
        }
        materialdialog.setInternalInputCallback();
        materialdialog.input.setHint(builder.inputHint);
        materialdialog.input.setSingleLine();
        materialdialog.input.setTextColor(builder.contentColor);
        materialdialog.input.setHintTextColor(DialogUtils.adjustAlpha(builder.contentColor, 0.3F));
        MDTintHelper.setTint(materialdialog.input, materialdialog.mBuilder.widgetColor);
        if (builder.inputType != -1)
        {
            materialdialog.input.setInputType(builder.inputType);
            if ((builder.inputType & 0x80) == 128)
            {
                materialdialog.input.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
        }
        materialdialog.inputMinMax = (TextView)materialdialog.view.findViewById(R.id.minMax);
        if (builder.inputMaxLength > -1)
        {
            materialdialog.invalidateInputMinMaxIndicator(materialdialog.input.getText().toString().trim().length());
            return;
        } else
        {
            materialdialog.inputMinMax.setVisibility(8);
            materialdialog.inputMinMax = null;
            return;
        }
    }

    private static void setupProgressDialog(MaterialDialog materialdialog)
    {
        Object obj = materialdialog.mBuilder;
        if (((MaterialDialog.Builder) (obj)).indeterminateProgress || ((MaterialDialog.Builder) (obj)).progress > -2)
        {
            materialdialog.mProgress = (ProgressBar)materialdialog.view.findViewById(0x102000d);
            if (materialdialog.mProgress != null)
            {
                MDTintHelper.setTint(materialdialog.mProgress, ((MaterialDialog.Builder) (obj)).widgetColor);
                if (!((MaterialDialog.Builder) (obj)).indeterminateProgress)
                {
                    materialdialog.mProgress.setProgress(0);
                    materialdialog.mProgress.setMax(((MaterialDialog.Builder) (obj)).progressMax);
                    materialdialog.mProgressLabel = (TextView)materialdialog.view.findViewById(R.id.label);
                    materialdialog.mProgressLabel.setTextColor(((MaterialDialog.Builder) (obj)).contentColor);
                    materialdialog.setTypeface(materialdialog.mProgressLabel, ((MaterialDialog.Builder) (obj)).mediumFont);
                    materialdialog.mProgressMinMax = (TextView)materialdialog.view.findViewById(R.id.minMax);
                    materialdialog.mProgressMinMax.setTextColor(((MaterialDialog.Builder) (obj)).contentColor);
                    materialdialog.setTypeface(materialdialog.mProgressMinMax, ((MaterialDialog.Builder) (obj)).regularFont);
                    if (((MaterialDialog.Builder) (obj)).showMinMax)
                    {
                        materialdialog.mProgressMinMax.setVisibility(0);
                        materialdialog.mProgressMinMax.setText((new StringBuilder()).append("0/").append(((MaterialDialog.Builder) (obj)).progressMax).toString());
                        obj = (android.view.ViewGroup.MarginLayoutParams)materialdialog.mProgress.getLayoutParams();
                        obj.leftMargin = 0;
                        obj.rightMargin = 0;
                    } else
                    {
                        materialdialog.mProgressMinMax.setVisibility(8);
                    }
                    materialdialog.mProgressLabel.setText("0%");
                    return;
                }
            }
        }
    }
}
