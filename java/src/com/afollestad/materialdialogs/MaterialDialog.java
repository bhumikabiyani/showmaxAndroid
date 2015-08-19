// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.support.v4.content.res.ResourcesCompat;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.afollestad.materialdialogs.internal.MDButton;
import com.afollestad.materialdialogs.internal.MDRootLayout;
import com.afollestad.materialdialogs.internal.MDTintHelper;
import com.afollestad.materialdialogs.util.DialogUtils;
import com.afollestad.materialdialogs.util.TypefaceHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.afollestad.materialdialogs:
//            DialogBase, DialogInit, DialogAction, MaterialDialogAdapter, 
//            GravityEnum, Theme, ThemeSingleton

public class MaterialDialog extends DialogBase
    implements android.view.View.OnClickListener, android.widget.AdapterView.OnItemClickListener
{
    public static class Builder
    {

        protected ListAdapter adapter;
        protected boolean alwaysCallInputCallback;
        protected boolean alwaysCallMultiChoiceCallback;
        protected boolean alwaysCallSingleChoiceCallback;
        protected boolean autoDismiss;
        protected int backgroundColor;
        protected int btnSelectorNegative;
        protected int btnSelectorNeutral;
        protected int btnSelectorPositive;
        protected int btnSelectorStacked;
        protected GravityEnum btnStackedGravity;
        protected GravityEnum buttonsGravity;
        protected ButtonCallback callback;
        protected android.content.DialogInterface.OnCancelListener cancelListener;
        protected boolean cancelable;
        protected CharSequence content;
        protected int contentColor;
        protected boolean contentColorSet;
        protected GravityEnum contentGravity;
        protected float contentLineSpacingMultiplier;
        protected final Context context;
        protected View customView;
        protected android.content.DialogInterface.OnDismissListener dismissListener;
        protected int dividerColor;
        protected boolean forceStacking;
        protected Drawable icon;
        protected boolean indeterminateProgress;
        protected boolean inputAllowEmpty;
        protected InputCallback inputCallback;
        protected CharSequence inputHint;
        protected int inputMaxLength;
        protected int inputMaxLengthErrorColor;
        protected CharSequence inputPrefill;
        protected int inputType;
        protected int itemColor;
        protected boolean itemColorSet;
        protected CharSequence items[];
        protected GravityEnum itemsGravity;
        protected android.content.DialogInterface.OnKeyListener keyListener;
        protected boolean limitIconToDefaultSize;
        protected ListCallback listCallback;
        protected ListCallback listCallbackCustom;
        protected ListCallbackMultiChoice listCallbackMultiChoice;
        protected ListCallbackSingleChoice listCallbackSingleChoice;
        protected int listSelector;
        protected int maxIconSize;
        protected Typeface mediumFont;
        protected int negativeColor;
        protected CharSequence negativeText;
        protected int neutralColor;
        protected CharSequence neutralText;
        protected int positiveColor;
        protected CharSequence positiveText;
        protected int progress;
        protected int progressMax;
        protected Typeface regularFont;
        protected int selectedIndex;
        protected Integer selectedIndices[];
        protected android.content.DialogInterface.OnShowListener showListener;
        protected boolean showMinMax;
        protected Theme theme;
        protected CharSequence title;
        protected int titleColor;
        protected boolean titleColorSet;
        protected GravityEnum titleGravity;
        protected int widgetColor;
        protected boolean wrapCustomViewInScroll;

        private void checkSingleton()
        {
            if (ThemeSingleton.get(false) == null)
            {
                return;
            }
            ThemeSingleton themesingleton = ThemeSingleton.get();
            if (themesingleton.darkTheme)
            {
                theme = Theme.DARK;
            }
            if (themesingleton.titleColor != 0)
            {
                titleColor = themesingleton.titleColor;
            }
            if (themesingleton.contentColor != 0)
            {
                contentColor = themesingleton.contentColor;
            }
            if (themesingleton.positiveColor != 0)
            {
                positiveColor = themesingleton.positiveColor;
            }
            if (themesingleton.neutralColor != 0)
            {
                neutralColor = themesingleton.neutralColor;
            }
            if (themesingleton.negativeColor != 0)
            {
                negativeColor = themesingleton.negativeColor;
            }
            if (themesingleton.itemColor != 0)
            {
                itemColor = themesingleton.itemColor;
            }
            if (themesingleton.icon != null)
            {
                icon = themesingleton.icon;
            }
            if (themesingleton.backgroundColor != 0)
            {
                backgroundColor = themesingleton.backgroundColor;
            }
            if (themesingleton.dividerColor != 0)
            {
                dividerColor = themesingleton.dividerColor;
            }
            if (themesingleton.btnSelectorStacked != 0)
            {
                btnSelectorStacked = themesingleton.btnSelectorStacked;
            }
            if (themesingleton.listSelector != 0)
            {
                listSelector = themesingleton.listSelector;
            }
            if (themesingleton.btnSelectorPositive != 0)
            {
                btnSelectorPositive = themesingleton.btnSelectorPositive;
            }
            if (themesingleton.btnSelectorNeutral != 0)
            {
                btnSelectorNeutral = themesingleton.btnSelectorNeutral;
            }
            if (themesingleton.btnSelectorNegative != 0)
            {
                btnSelectorNegative = themesingleton.btnSelectorNegative;
            }
            if (themesingleton.widgetColor != 0)
            {
                widgetColor = themesingleton.widgetColor;
            }
            titleGravity = themesingleton.titleGravity;
            contentGravity = themesingleton.contentGravity;
            btnStackedGravity = themesingleton.btnStackedGravity;
            itemsGravity = themesingleton.itemsGravity;
            buttonsGravity = themesingleton.buttonsGravity;
        }

        public Builder adapter(ListAdapter listadapter, ListCallback listcallback)
        {
            if (customView != null)
            {
                throw new IllegalStateException("You cannot set adapter() when you're using a custom view.");
            } else
            {
                adapter = listadapter;
                listCallbackCustom = listcallback;
                return this;
            }
        }

        public Builder alwaysCallInputCallback()
        {
            alwaysCallInputCallback = true;
            return this;
        }

        public Builder alwaysCallMultiChoiceCallback()
        {
            alwaysCallMultiChoiceCallback = true;
            return this;
        }

        public Builder alwaysCallSingleChoiceCallback()
        {
            alwaysCallSingleChoiceCallback = true;
            return this;
        }

        public Builder autoDismiss(boolean flag)
        {
            autoDismiss = flag;
            return this;
        }

        public Builder backgroundColor(int i)
        {
            backgroundColor = i;
            return this;
        }

        public Builder backgroundColorAttr(int i)
        {
            return backgroundColor(DialogUtils.resolveColor(context, i));
        }

        public Builder backgroundColorRes(int i)
        {
            return backgroundColor(context.getResources().getColor(i));
        }

        public Builder btnSelector(int i)
        {
            btnSelectorPositive = i;
            btnSelectorNeutral = i;
            btnSelectorNegative = i;
            return this;
        }

        public Builder btnSelector(int i, DialogAction dialogaction)
        {
            static class _cls3
            {

                static final int $SwitchMap$com$afollestad$materialdialogs$DialogAction[];
                static final int $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType[];

                static 
                {
                    $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType = new int[ListType.values().length];
                    try
                    {
                        $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType[ListType.REGULAR.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror5) { }
                    try
                    {
                        $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType[ListType.SINGLE.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror4) { }
                    try
                    {
                        $SwitchMap$com$afollestad$materialdialogs$MaterialDialog$ListType[ListType.MULTI.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror3) { }
                    $SwitchMap$com$afollestad$materialdialogs$DialogAction = new int[DialogAction.values().length];
                    try
                    {
                        $SwitchMap$com$afollestad$materialdialogs$DialogAction[DialogAction.NEUTRAL.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        $SwitchMap$com$afollestad$materialdialogs$DialogAction[DialogAction.NEGATIVE.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        $SwitchMap$com$afollestad$materialdialogs$DialogAction[DialogAction.POSITIVE.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror)
                    {
                        return;
                    }
                }
            }

            switch (_cls3..SwitchMap.com.afollestad.materialdialogs.DialogAction[dialogaction.ordinal()])
            {
            default:
                btnSelectorPositive = i;
                return this;

            case 1: // '\001'
                btnSelectorNeutral = i;
                return this;

            case 2: // '\002'
                btnSelectorNegative = i;
                break;
            }
            return this;
        }

        public Builder btnSelectorStacked(int i)
        {
            btnSelectorStacked = i;
            return this;
        }

        public Builder btnStackedGravity(GravityEnum gravityenum)
        {
            btnStackedGravity = gravityenum;
            return this;
        }

        public MaterialDialog build()
        {
            return new MaterialDialog(this);
        }

        public Builder buttonsGravity(GravityEnum gravityenum)
        {
            buttonsGravity = gravityenum;
            return this;
        }

        public Builder callback(ButtonCallback buttoncallback)
        {
            callback = buttoncallback;
            return this;
        }

        public Builder cancelListener(android.content.DialogInterface.OnCancelListener oncancellistener)
        {
            cancelListener = oncancellistener;
            return this;
        }

        public Builder cancelable(boolean flag)
        {
            cancelable = flag;
            return this;
        }

        public Builder content(int i)
        {
            content(context.getText(i));
            return this;
        }

        public transient Builder content(int i, Object aobj[])
        {
            content(((CharSequence) (context.getString(i, aobj))));
            return this;
        }

        public Builder content(CharSequence charsequence)
        {
            if (customView != null)
            {
                throw new IllegalStateException("You cannot set content() when you're using a custom view.");
            } else
            {
                content = charsequence;
                return this;
            }
        }

        public Builder contentColor(int i)
        {
            contentColor = i;
            contentColorSet = true;
            return this;
        }

        public Builder contentColorAttr(int i)
        {
            contentColor(DialogUtils.resolveColor(context, i));
            return this;
        }

        public Builder contentColorRes(int i)
        {
            contentColor(context.getResources().getColor(i));
            return this;
        }

        public Builder contentGravity(GravityEnum gravityenum)
        {
            contentGravity = gravityenum;
            return this;
        }

        public Builder contentLineSpacing(float f)
        {
            contentLineSpacingMultiplier = f;
            return this;
        }

        public Builder customView(int i, boolean flag)
        {
            return customView(LayoutInflater.from(context).inflate(i, null), flag);
        }

        public Builder customView(View view1, boolean flag)
        {
            if (content != null)
            {
                throw new IllegalStateException("You cannot use customView() when you have content set.");
            }
            if (items != null)
            {
                throw new IllegalStateException("You cannot use customView() when you have items set.");
            }
            if (inputCallback != null)
            {
                throw new IllegalStateException("You cannot use customView() with an input dialog");
            }
            if (progress > -2 || indeterminateProgress)
            {
                throw new IllegalStateException("You cannot use customView() with a progress dialog");
            } else
            {
                customView = view1;
                wrapCustomViewInScroll = flag;
                return this;
            }
        }

        public Builder dismissListener(android.content.DialogInterface.OnDismissListener ondismisslistener)
        {
            dismissListener = ondismisslistener;
            return this;
        }

        public Builder dividerColor(int i)
        {
            dividerColor = i;
            return this;
        }

        public Builder dividerColorAttr(int i)
        {
            return dividerColor(DialogUtils.resolveColor(context, i));
        }

        public Builder dividerColorRes(int i)
        {
            return dividerColor(context.getResources().getColor(i));
        }

        public Builder forceStacking(boolean flag)
        {
            forceStacking = flag;
            return this;
        }

        public final Context getContext()
        {
            return context;
        }

        public final GravityEnum getItemsGravity()
        {
            return itemsGravity;
        }

        public final Typeface getRegularFont()
        {
            return regularFont;
        }

        public final int getTitleColor()
        {
            return titleColor;
        }

        public Builder icon(Drawable drawable)
        {
            icon = drawable;
            return this;
        }

        public Builder iconAttr(int i)
        {
            icon = DialogUtils.resolveDrawable(context, i);
            return this;
        }

        public Builder iconRes(int i)
        {
            icon = ResourcesCompat.getDrawable(context.getResources(), i, null);
            return this;
        }

        public Builder input(int i, int j, InputCallback inputcallback)
        {
            return input(i, j, true, inputcallback);
        }

        public Builder input(int i, int j, boolean flag, InputCallback inputcallback)
        {
            CharSequence charsequence1 = null;
            CharSequence charsequence;
            if (i == 0)
            {
                charsequence = null;
            } else
            {
                charsequence = context.getText(i);
            }
            if (j != 0)
            {
                charsequence1 = context.getText(j);
            }
            return input(charsequence, charsequence1, flag, inputcallback);
        }

        public Builder input(CharSequence charsequence, CharSequence charsequence1, InputCallback inputcallback)
        {
            return input(charsequence, charsequence1, true, inputcallback);
        }

        public Builder input(CharSequence charsequence, CharSequence charsequence1, boolean flag, InputCallback inputcallback)
        {
            if (customView != null)
            {
                throw new IllegalStateException("You cannot set content() when you're using a custom view.");
            } else
            {
                inputCallback = inputcallback;
                inputHint = charsequence;
                inputPrefill = charsequence1;
                inputAllowEmpty = flag;
                return this;
            }
        }

        public Builder inputMaxLength(int i)
        {
            return inputMaxLength(i, 0);
        }

        public Builder inputMaxLength(int i, int j)
        {
            if (i < 1)
            {
                throw new IllegalArgumentException("Max length for input dialogs cannot be less than 1.");
            }
            inputMaxLength = i;
            if (j == 0)
            {
                inputMaxLengthErrorColor = context.getResources().getColor(R.color.md_edittext_error);
                return this;
            } else
            {
                inputMaxLengthErrorColor = j;
                return this;
            }
        }

        public Builder inputMaxLengthRes(int i, int j)
        {
            return inputMaxLength(i, context.getResources().getColor(j));
        }

        public Builder inputType(int i)
        {
            inputType = i;
            return this;
        }

        public Builder itemColor(int i)
        {
            itemColor = i;
            itemColorSet = true;
            return this;
        }

        public Builder itemColorAttr(int i)
        {
            return itemColor(DialogUtils.resolveColor(context, i));
        }

        public Builder itemColorRes(int i)
        {
            return itemColor(context.getResources().getColor(i));
        }

        public Builder items(int i)
        {
            items(context.getResources().getTextArray(i));
            return this;
        }

        public Builder items(CharSequence acharsequence[])
        {
            if (customView != null)
            {
                throw new IllegalStateException("You cannot set items() when you're using a custom view.");
            } else
            {
                items = acharsequence;
                return this;
            }
        }

        public Builder itemsCallback(ListCallback listcallback)
        {
            listCallback = listcallback;
            listCallbackSingleChoice = null;
            listCallbackMultiChoice = null;
            return this;
        }

        public Builder itemsCallbackMultiChoice(Integer ainteger[], ListCallbackMultiChoice listcallbackmultichoice)
        {
            selectedIndices = ainteger;
            listCallback = null;
            listCallbackSingleChoice = null;
            listCallbackMultiChoice = listcallbackmultichoice;
            return this;
        }

        public Builder itemsCallbackSingleChoice(int i, ListCallbackSingleChoice listcallbacksinglechoice)
        {
            selectedIndex = i;
            listCallback = null;
            listCallbackSingleChoice = listcallbacksinglechoice;
            listCallbackMultiChoice = null;
            return this;
        }

        public Builder itemsGravity(GravityEnum gravityenum)
        {
            itemsGravity = gravityenum;
            return this;
        }

        public Builder keyListener(android.content.DialogInterface.OnKeyListener onkeylistener)
        {
            keyListener = onkeylistener;
            return this;
        }

        public Builder limitIconToDefaultSize()
        {
            limitIconToDefaultSize = true;
            return this;
        }

        public Builder listSelector(int i)
        {
            listSelector = i;
            return this;
        }

        public Builder maxIconSize(int i)
        {
            maxIconSize = i;
            return this;
        }

        public Builder maxIconSizeRes(int i)
        {
            return maxIconSize((int)context.getResources().getDimension(i));
        }

        public Builder negativeColor(int i)
        {
            negativeColor = i;
            return this;
        }

        public Builder negativeColorAttr(int i)
        {
            return negativeColor(DialogUtils.resolveColor(context, i));
        }

        public Builder negativeColorRes(int i)
        {
            return negativeColor(context.getResources().getColor(i));
        }

        public Builder negativeText(int i)
        {
            return negativeText(context.getText(i));
        }

        public Builder negativeText(CharSequence charsequence)
        {
            negativeText = charsequence;
            return this;
        }

        public Builder neutralColor(int i)
        {
            neutralColor = i;
            return this;
        }

        public Builder neutralColorAttr(int i)
        {
            return neutralColor(DialogUtils.resolveColor(context, i));
        }

        public Builder neutralColorRes(int i)
        {
            return neutralColor(context.getResources().getColor(i));
        }

        public Builder neutralText(int i)
        {
            return neutralText(context.getText(i));
        }

        public Builder neutralText(CharSequence charsequence)
        {
            neutralText = charsequence;
            return this;
        }

        public Builder positiveColor(int i)
        {
            positiveColor = i;
            return this;
        }

        public Builder positiveColorAttr(int i)
        {
            return positiveColor(DialogUtils.resolveColor(context, i));
        }

        public Builder positiveColorRes(int i)
        {
            return positiveColor(context.getResources().getColor(i));
        }

        public Builder positiveText(int i)
        {
            positiveText(context.getText(i));
            return this;
        }

        public Builder positiveText(CharSequence charsequence)
        {
            positiveText = charsequence;
            return this;
        }

        public Builder progress(boolean flag, int i)
        {
            if (customView != null)
            {
                throw new IllegalStateException("You cannot set progress() when you're using a custom view.");
            }
            if (flag)
            {
                indeterminateProgress = true;
                progress = -2;
                return this;
            } else
            {
                indeterminateProgress = false;
                progress = -1;
                progressMax = i;
                return this;
            }
        }

        public Builder progress(boolean flag, int i, boolean flag1)
        {
            showMinMax = flag1;
            return progress(flag, i);
        }

        public MaterialDialog show()
        {
            MaterialDialog materialdialog = build();
            materialdialog.show();
            return materialdialog;
        }

        public Builder showListener(android.content.DialogInterface.OnShowListener onshowlistener)
        {
            showListener = onshowlistener;
            return this;
        }

        public Builder theme(Theme theme1)
        {
            theme = theme1;
            return this;
        }

        public Builder title(int i)
        {
            title(context.getText(i));
            return this;
        }

        public Builder title(CharSequence charsequence)
        {
            title = charsequence;
            return this;
        }

        public Builder titleColor(int i)
        {
            titleColor = i;
            titleColorSet = true;
            return this;
        }

        public Builder titleColorAttr(int i)
        {
            titleColor(DialogUtils.resolveColor(context, i));
            return this;
        }

        public Builder titleColorRes(int i)
        {
            titleColor(context.getResources().getColor(i));
            return this;
        }

        public Builder titleGravity(GravityEnum gravityenum)
        {
            titleGravity = gravityenum;
            return this;
        }

        public Builder typeface(Typeface typeface1, Typeface typeface2)
        {
            mediumFont = typeface1;
            regularFont = typeface2;
            return this;
        }

        public Builder typeface(String s, String s1)
        {
            if (s != null)
            {
                mediumFont = TypefaceHelper.get(context, s);
                if (mediumFont == null)
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("No font asset found for ").append(s).toString());
                }
            }
            if (s1 != null)
            {
                regularFont = TypefaceHelper.get(context, s1);
                if (regularFont == null)
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("No font asset found for ").append(s1).toString());
                }
            }
            return this;
        }

        public Builder widgetColor(int i)
        {
            widgetColor = i;
            return this;
        }

        public Builder widgetColorAttr(int i)
        {
            return widgetColorRes(DialogUtils.resolveColor(context, i));
        }

        public Builder widgetColorRes(int i)
        {
            return widgetColor(context.getResources().getColor(i));
        }

        public Builder(Context context1)
        {
            titleGravity = GravityEnum.START;
            contentGravity = GravityEnum.START;
            btnStackedGravity = GravityEnum.END;
            itemsGravity = GravityEnum.START;
            buttonsGravity = GravityEnum.START;
            titleColor = -1;
            contentColor = -1;
            alwaysCallMultiChoiceCallback = false;
            alwaysCallSingleChoiceCallback = false;
            theme = Theme.LIGHT;
            cancelable = true;
            contentLineSpacingMultiplier = 1.2F;
            selectedIndex = -1;
            selectedIndices = null;
            autoDismiss = true;
            maxIconSize = -1;
            progress = -2;
            progressMax = 0;
            inputType = -1;
            inputMaxLength = -1;
            inputMaxLengthErrorColor = 0;
            titleColorSet = false;
            contentColorSet = false;
            itemColorSet = false;
            context = context1;
            int i = context1.getResources().getColor(R.color.md_material_blue_600);
            widgetColor = DialogUtils.resolveColor(context1, R.attr.colorAccent, i);
            if (android.os.Build.VERSION.SDK_INT >= 21)
            {
                widgetColor = DialogUtils.resolveColor(context1, 0x1010435, widgetColor);
            }
            positiveColor = widgetColor;
            negativeColor = widgetColor;
            neutralColor = widgetColor;
            Theme theme1;
            if (DialogUtils.isColorDark(DialogUtils.resolveColor(context1, 0x1010036)))
            {
                theme1 = Theme.LIGHT;
            } else
            {
                theme1 = Theme.DARK;
            }
            theme = theme1;
            checkSingleton();
            titleGravity = DialogUtils.resolveGravityEnum(context1, R.attr.md_title_gravity, titleGravity);
            contentGravity = DialogUtils.resolveGravityEnum(context1, R.attr.md_content_gravity, contentGravity);
            btnStackedGravity = DialogUtils.resolveGravityEnum(context1, R.attr.md_btnstacked_gravity, btnStackedGravity);
            itemsGravity = DialogUtils.resolveGravityEnum(context1, R.attr.md_items_gravity, itemsGravity);
            buttonsGravity = DialogUtils.resolveGravityEnum(context1, R.attr.md_buttons_gravity, buttonsGravity);
            typeface(DialogUtils.resolveString(context1, R.attr.md_medium_font), DialogUtils.resolveString(context1, R.attr.md_regular_font));
            if (mediumFont == null)
            {
                try
                {
                    mediumFont = Typeface.create("sans-serif-medium", 0);
                }
                // Misplaced declaration of an exception variable
                catch (Context context1) { }
            }
            if (regularFont == null)
            {
                try
                {
                    regularFont = Typeface.create("sans-serif", 0);
                }
                // Misplaced declaration of an exception variable
                catch (Context context1) { }
            }
            if (mediumFont == null)
            {
                mediumFont = regularFont;
            }
        }
    }

    public static abstract class ButtonCallback
    {

        protected final Object clone()
            throws CloneNotSupportedException
        {
            return super.clone();
        }

        public final boolean equals(Object obj)
        {
            return super.equals(obj);
        }

        protected final void finalize()
            throws Throwable
        {
            super.finalize();
        }

        public final int hashCode()
        {
            return super.hashCode();
        }

        public void onNegative(MaterialDialog materialdialog)
        {
        }

        public void onNeutral(MaterialDialog materialdialog)
        {
        }

        public void onPositive(MaterialDialog materialdialog)
        {
        }

        public final String toString()
        {
            return super.toString();
        }

        public ButtonCallback()
        {
        }
    }

    public static class DialogException extends android.view.WindowManager.BadTokenException
    {

        public DialogException(String s)
        {
            super(s);
        }
    }

    public static interface InputCallback
    {

        public abstract void onInput(MaterialDialog materialdialog, CharSequence charsequence);
    }

    public static interface ListCallback
    {

        public abstract void onSelection(MaterialDialog materialdialog, View view1, int i, CharSequence charsequence);
    }

    public static interface ListCallbackMultiChoice
    {

        public abstract boolean onSelection(MaterialDialog materialdialog, Integer ainteger[], CharSequence acharsequence[]);
    }

    public static interface ListCallbackSingleChoice
    {

        public abstract boolean onSelection(MaterialDialog materialdialog, View view1, int i, CharSequence charsequence);
    }

    protected static final class ListType extends Enum
    {

        private static final ListType $VALUES[];
        public static final ListType MULTI;
        public static final ListType REGULAR;
        public static final ListType SINGLE;

        public static int getLayoutForType(ListType listtype)
        {
            switch (_cls3..SwitchMap.com.afollestad.materialdialogs.MaterialDialog.ListType[listtype.ordinal()])
            {
            default:
                throw new IllegalArgumentException("Not a valid list type");

            case 1: // '\001'
                return R.layout.md_listitem;

            case 2: // '\002'
                return R.layout.md_listitem_singlechoice;

            case 3: // '\003'
                return R.layout.md_listitem_multichoice;
            }
        }

        public static ListType valueOf(String s)
        {
            return (ListType)Enum.valueOf(com/afollestad/materialdialogs/MaterialDialog$ListType, s);
        }

        public static ListType[] values()
        {
            return (ListType[])$VALUES.clone();
        }

        static 
        {
            REGULAR = new ListType("REGULAR", 0);
            SINGLE = new ListType("SINGLE", 1);
            MULTI = new ListType("MULTI", 2);
            $VALUES = (new ListType[] {
                REGULAR, SINGLE, MULTI
            });
        }

        private ListType(String s, int i)
        {
            super(s, i);
        }
    }

    public static class NotImplementedException extends Error
    {

        public NotImplementedException(String s)
        {
            super(s);
        }
    }


    protected TextView content;
    protected FrameLayout customViewFrame;
    protected ImageView icon;
    protected EditText input;
    protected TextView inputMinMax;
    protected ListType listType;
    protected ListView listView;
    protected final Builder mBuilder;
    protected ProgressBar mProgress;
    protected TextView mProgressLabel;
    protected TextView mProgressMinMax;
    protected MDButton negativeButton;
    protected MDButton neutralButton;
    protected MDButton positiveButton;
    protected List selectedIndicesList;
    protected TextView title;
    protected View titleFrame;
    protected final MDRootLayout view;

    protected MaterialDialog(Builder builder)
    {
        super(builder.context, DialogInit.getTheme(builder));
        mBuilder = builder;
        view = (MDRootLayout)LayoutInflater.from(builder.context).inflate(DialogInit.getInflateLayout(builder), null);
        DialogInit.init(this);
    }

    private boolean sendMultichoiceCallback()
    {
        Collections.sort(selectedIndicesList);
        ArrayList arraylist = new ArrayList();
        Integer integer;
        for (Iterator iterator = selectedIndicesList.iterator(); iterator.hasNext(); arraylist.add(mBuilder.items[integer.intValue()]))
        {
            integer = (Integer)iterator.next();
        }

        return mBuilder.listCallbackMultiChoice.onSelection(this, (Integer[])selectedIndicesList.toArray(new Integer[selectedIndicesList.size()]), (CharSequence[])arraylist.toArray(new CharSequence[arraylist.size()]));
    }

    private boolean sendSingleChoiceCallback(View view1)
    {
        CharSequence charsequence = null;
        if (mBuilder.selectedIndex >= 0)
        {
            charsequence = mBuilder.items[mBuilder.selectedIndex];
        }
        return mBuilder.listCallbackSingleChoice.onSelection(this, view1, mBuilder.selectedIndex, charsequence);
    }

    protected final void checkIfListInitScroll()
    {
        if (listView == null)
        {
            return;
        } else
        {
            listView.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                final MaterialDialog this$0;

                public void onGlobalLayout()
                {
                    if (android.os.Build.VERSION.SDK_INT < 16)
                    {
                        listView.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    } else
                    {
                        listView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                    if (listType != ListType.SINGLE && listType != ListType.MULTI) goto _L2; else goto _L1
_L1:
                    if (listType != ListType.SINGLE) goto _L4; else goto _L3
_L3:
                    if (mBuilder.selectedIndex >= 0) goto _L5; else goto _L2
_L2:
                    return;
_L5:
                    int i = mBuilder.selectedIndex;
_L8:
                    if (listView.getLastVisiblePosition() >= i) goto _L2; else goto _L6
_L6:
                    int j = i - (listView.getLastVisiblePosition() - listView.getFirstVisiblePosition()) / 2;
                    i = j;
                    if (j < 0)
                    {
                        i = 0;
                    }
                    listView.post(i. new Runnable() {

                        final _cls1 this$1;
                        final int val$fScrollIndex;

                        public void run()
                        {
                            listView.requestFocus();
                            listView.setSelection(fScrollIndex);
                        }

            
            {
                this$1 = final__pcls1;
                fScrollIndex = I.this;
                super();
            }
                    });
                    return;
_L4:
                    if (mBuilder.selectedIndices == null || mBuilder.selectedIndices.length == 0) goto _L2; else goto _L7
_L7:
                    List list = Arrays.asList(mBuilder.selectedIndices);
                    Collections.sort(list);
                    i = ((Integer)list.get(0)).intValue();
                      goto _L8
                }

            
            {
                this$0 = MaterialDialog.this;
                super();
            }
            });
            return;
        }
    }

    public final View getActionButton(DialogAction dialogaction)
    {
        switch (_cls3..SwitchMap.com.afollestad.materialdialogs.DialogAction[dialogaction.ordinal()])
        {
        default:
            return view.findViewById(R.id.buttonDefaultPositive);

        case 1: // '\001'
            return view.findViewById(R.id.buttonDefaultNeutral);

        case 2: // '\002'
            return view.findViewById(R.id.buttonDefaultNegative);
        }
    }

    public final Builder getBuilder()
    {
        return mBuilder;
    }

    Drawable getButtonSelector(DialogAction dialogaction, boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        if (mBuilder.btnSelectorStacked == 0) goto _L4; else goto _L3
_L3:
        dialogaction = ResourcesCompat.getDrawable(mBuilder.context.getResources(), mBuilder.btnSelectorStacked, null);
_L6:
        return dialogaction;
_L4:
        Drawable drawable;
        drawable = DialogUtils.resolveDrawable(mBuilder.context, R.attr.md_btn_stacked_selector);
        dialogaction = drawable;
        if (drawable != null) goto _L6; else goto _L5
_L5:
        return DialogUtils.resolveDrawable(getContext(), R.attr.md_btn_stacked_selector);
_L2:
        switch (_cls3..SwitchMap.com.afollestad.materialdialogs.DialogAction[dialogaction.ordinal()])
        {
        default:
            if (mBuilder.btnSelectorPositive != 0)
            {
                return ResourcesCompat.getDrawable(mBuilder.context.getResources(), mBuilder.btnSelectorPositive, null);
            }
            drawable = DialogUtils.resolveDrawable(mBuilder.context, R.attr.md_btn_positive_selector);
            dialogaction = drawable;
            if (drawable == null)
            {
                return DialogUtils.resolveDrawable(getContext(), R.attr.md_btn_positive_selector);
            }
            break;

        case 1: // '\001'
            if (mBuilder.btnSelectorNeutral != 0)
            {
                return ResourcesCompat.getDrawable(mBuilder.context.getResources(), mBuilder.btnSelectorNeutral, null);
            }
            drawable = DialogUtils.resolveDrawable(mBuilder.context, R.attr.md_btn_neutral_selector);
            dialogaction = drawable;
            if (drawable == null)
            {
                return DialogUtils.resolveDrawable(getContext(), R.attr.md_btn_neutral_selector);
            }
            break;

        case 2: // '\002'
            if (mBuilder.btnSelectorNegative != 0)
            {
                return ResourcesCompat.getDrawable(mBuilder.context.getResources(), mBuilder.btnSelectorNegative, null);
            }
            drawable = DialogUtils.resolveDrawable(mBuilder.context, R.attr.md_btn_negative_selector);
            dialogaction = drawable;
            continue; /* Loop/switch isn't completed */
        }
        if (true) goto _L6; else goto _L7
_L7:
        if (drawable != null) goto _L6; else goto _L8
_L8:
        return DialogUtils.resolveDrawable(getContext(), R.attr.md_btn_negative_selector);
    }

    public final TextView getContentView()
    {
        return content;
    }

    public final int getCurrentProgress()
    {
        if (mProgress == null)
        {
            return -1;
        } else
        {
            return mProgress.getProgress();
        }
    }

    public final View getCustomView()
    {
        return mBuilder.customView;
    }

    public final EditText getInputEditText()
    {
        return input;
    }

    protected final Drawable getListSelector()
    {
        Drawable drawable;
        if (mBuilder.listSelector != 0)
        {
            drawable = ResourcesCompat.getDrawable(mBuilder.context.getResources(), mBuilder.listSelector, null);
        } else
        {
            Drawable drawable1 = DialogUtils.resolveDrawable(mBuilder.context, R.attr.md_list_selector);
            drawable = drawable1;
            if (drawable1 == null)
            {
                return DialogUtils.resolveDrawable(getContext(), R.attr.md_list_selector);
            }
        }
        return drawable;
    }

    public final ListView getListView()
    {
        return listView;
    }

    public final int getMaxProgress()
    {
        if (mProgress == null)
        {
            return -1;
        } else
        {
            return mProgress.getMax();
        }
    }

    public int getSelectedIndex()
    {
        if (mBuilder.listCallbackSingleChoice != null)
        {
            return mBuilder.selectedIndex;
        } else
        {
            return -1;
        }
    }

    public Integer[] getSelectedIndices()
    {
        if (mBuilder.listCallbackMultiChoice != null)
        {
            return (Integer[])selectedIndicesList.toArray(new Integer[selectedIndicesList.size()]);
        } else
        {
            return null;
        }
    }

    public final TextView getTitleView()
    {
        return title;
    }

    public final View getView()
    {
        return view;
    }

    public final boolean hasActionButtons()
    {
        return numberOfActionButtons() > 0;
    }

    public final void incrementProgress(int i)
    {
        if (mBuilder.progress <= -2)
        {
            throw new IllegalStateException("Cannot use incrementProgress() on this dialog.");
        } else
        {
            setProgress(getCurrentProgress() + i);
            return;
        }
    }

    protected void invalidateInputMinMaxIndicator(int i)
    {
        boolean flag = true;
        if (inputMinMax != null)
        {
            inputMinMax.setText((new StringBuilder()).append(i).append("/").append(mBuilder.inputMaxLength).toString());
            View view1;
            int j;
            int k;
            if (i > mBuilder.inputMaxLength)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            if (i != 0)
            {
                j = mBuilder.inputMaxLengthErrorColor;
            } else
            {
                j = mBuilder.contentColor;
            }
            if (i != 0)
            {
                k = mBuilder.inputMaxLengthErrorColor;
            } else
            {
                k = mBuilder.widgetColor;
            }
            inputMinMax.setTextColor(j);
            MDTintHelper.setTint(input, k);
            view1 = getActionButton(DialogAction.POSITIVE);
            if (view1.isEnabled())
            {
                if (i != 0)
                {
                    flag = false;
                }
                view1.setEnabled(flag);
            }
        }
    }

    protected final void invalidateList()
    {
        if (listView != null && (mBuilder.items != null && mBuilder.items.length != 0 || mBuilder.adapter != null))
        {
            listView.setAdapter(mBuilder.adapter);
            if (listType != null || mBuilder.listCallbackCustom != null)
            {
                listView.setOnItemClickListener(this);
                return;
            }
        }
    }

    public final boolean isCancelled()
    {
        return !isShowing();
    }

    public final boolean isIndeterminateProgress()
    {
        return mBuilder.indeterminateProgress;
    }

    public final int numberOfActionButtons()
    {
        int j = 0;
        int i = j;
        if (mBuilder.positiveText != null)
        {
            i = j;
            if (positiveButton.getVisibility() == 0)
            {
                i = 0 + 1;
            }
        }
        j = i;
        if (mBuilder.neutralText != null)
        {
            j = i;
            if (neutralButton.getVisibility() == 0)
            {
                j = i + 1;
            }
        }
        i = j;
        if (mBuilder.negativeText != null)
        {
            i = j;
            if (negativeButton.getVisibility() == 0)
            {
                i = j + 1;
            }
        }
        return i;
    }

    public final void onClick(View view1)
    {
        DialogAction dialogaction = (DialogAction)view1.getTag();
        _cls3..SwitchMap.com.afollestad.materialdialogs.DialogAction[dialogaction.ordinal()];
        JVM INSTR tableswitch 1 3: default 44
    //                   1 195
    //                   2 159
    //                   3 45;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L4:
        if (mBuilder.callback != null)
        {
            mBuilder.callback.onPositive(this);
        }
        if (mBuilder.listCallbackSingleChoice != null)
        {
            sendSingleChoiceCallback(view1);
        }
        if (mBuilder.listCallbackMultiChoice != null)
        {
            sendMultichoiceCallback();
        }
        if (mBuilder.inputCallback != null && input != null && !mBuilder.alwaysCallInputCallback)
        {
            mBuilder.inputCallback.onInput(this, input.getText());
        }
        if (mBuilder.autoDismiss)
        {
            dismiss();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (mBuilder.callback != null)
        {
            mBuilder.callback.onNegative(this);
        }
        if (mBuilder.autoDismiss)
        {
            dismiss();
            return;
        }
        if (true) goto _L1; else goto _L2
_L2:
        if (mBuilder.callback != null)
        {
            mBuilder.callback.onNeutral(this);
        }
        if (mBuilder.autoDismiss)
        {
            dismiss();
            return;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void onItemClick(AdapterView adapterview, View view1, int i, long l)
    {
        if (mBuilder.listCallbackCustom == null) goto _L2; else goto _L1
_L1:
        adapterview = null;
        if (view1 instanceof TextView)
        {
            adapterview = ((TextView)view1).getText();
        }
        mBuilder.listCallbackCustom.onSelection(this, view1, i, adapterview);
_L4:
        return;
_L2:
        if (listType == null || listType == ListType.REGULAR)
        {
            if (mBuilder.autoDismiss)
            {
                dismiss();
            }
            mBuilder.listCallback.onSelection(this, view1, i, mBuilder.items[i]);
            return;
        }
        if (listType != ListType.MULTI)
        {
            continue; /* Loop/switch isn't completed */
        }
        boolean flag;
        if (!selectedIndicesList.contains(Integer.valueOf(i)))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        adapterview = (CheckBox)((LinearLayout)view1).getChildAt(0);
        if (flag)
        {
            selectedIndicesList.add(Integer.valueOf(i));
            if (mBuilder.alwaysCallMultiChoiceCallback)
            {
                if (sendMultichoiceCallback())
                {
                    adapterview.setChecked(true);
                    return;
                } else
                {
                    selectedIndicesList.remove(Integer.valueOf(i));
                    return;
                }
            } else
            {
                adapterview.setChecked(true);
                return;
            }
        }
        selectedIndicesList.remove(Integer.valueOf(i));
        adapterview.setChecked(false);
        if (mBuilder.alwaysCallMultiChoiceCallback)
        {
            sendMultichoiceCallback();
            return;
        }
        continue; /* Loop/switch isn't completed */
        if (listType != ListType.SINGLE) goto _L4; else goto _L3
_L3:
        boolean flag1 = true;
        if (mBuilder.autoDismiss && mBuilder.positiveText == null)
        {
            dismiss();
            flag1 = false;
            mBuilder.selectedIndex = i;
            sendSingleChoiceCallback(view1);
        } else
        if (mBuilder.alwaysCallSingleChoiceCallback)
        {
            int j = mBuilder.selectedIndex;
            mBuilder.selectedIndex = i;
            flag1 = sendSingleChoiceCallback(view1);
            mBuilder.selectedIndex = j;
        }
        if (flag1 && mBuilder.selectedIndex != i)
        {
            mBuilder.selectedIndex = i;
            ((MaterialDialogAdapter)mBuilder.adapter).notifyDataSetChanged();
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public final void onShow(DialogInterface dialoginterface)
    {
        if (input != null)
        {
            DialogUtils.showKeyboard(this, mBuilder);
            if (input.getText().length() > 0)
            {
                input.setSelection(input.getText().length());
            }
        }
        super.onShow(dialoginterface);
    }

    protected void onStop()
    {
        super.onStop();
        if (input != null)
        {
            DialogUtils.hideKeyboard(this, mBuilder);
        }
    }

    public final void setActionButton(DialogAction dialogaction, int i)
    {
        setActionButton(dialogaction, getContext().getText(i));
    }

    public final void setActionButton(DialogAction dialogaction, CharSequence charsequence)
    {
        byte byte0 = 8;
        switch (_cls3..SwitchMap.com.afollestad.materialdialogs.DialogAction[dialogaction.ordinal()])
        {
        default:
            mBuilder.positiveText = charsequence;
            positiveButton.setText(charsequence);
            dialogaction = positiveButton;
            if (charsequence != null)
            {
                byte0 = 0;
            }
            dialogaction.setVisibility(byte0);
            return;

        case 1: // '\001'
            mBuilder.neutralText = charsequence;
            neutralButton.setText(charsequence);
            dialogaction = neutralButton;
            if (charsequence != null)
            {
                byte0 = 0;
            }
            dialogaction.setVisibility(byte0);
            return;

        case 2: // '\002'
            mBuilder.negativeText = charsequence;
            negativeButton.setText(charsequence);
            dialogaction = negativeButton;
            break;
        }
        if (charsequence != null)
        {
            byte0 = 0;
        }
        dialogaction.setVisibility(byte0);
    }

    public final void setContent(CharSequence charsequence)
    {
        content.setText(charsequence);
        TextView textview = content;
        byte byte0;
        if (TextUtils.isEmpty(charsequence))
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        textview.setVisibility(byte0);
    }

    public void setIcon(int i)
    {
        icon.setImageResource(i);
        ImageView imageview = icon;
        if (i != 0)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        imageview.setVisibility(i);
    }

    public void setIcon(Drawable drawable)
    {
        icon.setImageDrawable(drawable);
        ImageView imageview = icon;
        int i;
        if (drawable != null)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        imageview.setVisibility(i);
    }

    public void setIconAttribute(int i)
    {
        Drawable drawable = DialogUtils.resolveDrawable(mBuilder.context, i);
        icon.setImageDrawable(drawable);
        ImageView imageview = icon;
        if (drawable != null)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        imageview.setVisibility(i);
    }

    protected void setInternalInputCallback()
    {
        if (input == null)
        {
            return;
        } else
        {
            input.addTextChangedListener(new TextWatcher() {

                final MaterialDialog this$0;

                public void afterTextChanged(Editable editable)
                {
                }

                public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
                {
                }

                public void onTextChanged(CharSequence charsequence, int i, int j, int k)
                {
                    if (mBuilder.alwaysCallInputCallback)
                    {
                        mBuilder.inputCallback.onInput(MaterialDialog.this, charsequence);
                    }
                    i = charsequence.toString().trim().length();
                    if (!mBuilder.inputAllowEmpty)
                    {
                        charsequence = getActionButton(DialogAction.POSITIVE);
                        boolean flag;
                        if (i > 0)
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        charsequence.setEnabled(flag);
                    }
                    invalidateInputMinMaxIndicator(i);
                }

            
            {
                this$0 = MaterialDialog.this;
                super();
            }
            });
            return;
        }
    }

    public final void setItems(CharSequence acharsequence[])
    {
        if (mBuilder.adapter == null)
        {
            throw new IllegalStateException("This MaterialDialog instance does not yet have an adapter set to it. You cannot use setItems().");
        }
        if (mBuilder.adapter instanceof MaterialDialogAdapter)
        {
            mBuilder.adapter = new MaterialDialogAdapter(this, ListType.getLayoutForType(listType), R.id.title, acharsequence);
            mBuilder.items = acharsequence;
            listView.setAdapter(mBuilder.adapter);
            return;
        } else
        {
            throw new IllegalStateException("When using a custom adapter, setItems() cannot be used. Set items through the adapter instead.");
        }
    }

    public final void setMaxProgress(int i)
    {
        if (Looper.myLooper() != Looper.getMainLooper())
        {
            throw new IllegalStateException("You can only set the dialog's progress from the UI thread.");
        }
        if (mBuilder.progress <= -2)
        {
            throw new IllegalStateException("Cannot use setMaxProgress() on this dialog.");
        } else
        {
            mProgress.setMax(i);
            return;
        }
    }

    public void setMessage(CharSequence charsequence)
    {
        setContent(charsequence);
    }

    public final void setProgress(int i)
    {
        if (Looper.myLooper() != Looper.getMainLooper())
        {
            throw new IllegalStateException("You can only set the dialog's progress from the UI thread.");
        }
        if (mBuilder.progress <= -2)
        {
            throw new IllegalStateException("Cannot use setProgress() on this dialog.");
        }
        mProgress.setProgress(i);
        i = (int)(((float)getCurrentProgress() / (float)getMaxProgress()) * 100F);
        mProgressLabel.setText((new StringBuilder()).append(i).append("%").toString());
        if (mProgressMinMax != null)
        {
            mProgressMinMax.setText((new StringBuilder()).append(getCurrentProgress()).append("/").append(getMaxProgress()).toString());
        }
    }

    public void setSelectedIndex(int i)
    {
        mBuilder.selectedIndex = i;
        if (mBuilder.adapter != null && (mBuilder.adapter instanceof MaterialDialogAdapter))
        {
            ((MaterialDialogAdapter)mBuilder.adapter).notifyDataSetChanged();
            return;
        } else
        {
            throw new IllegalStateException("You can only use setSelectedIndex() with the default adapter implementation.");
        }
    }

    public void setSelectedIndices(Integer ainteger[])
    {
        mBuilder.selectedIndices = ainteger;
        selectedIndicesList = new ArrayList(Arrays.asList(ainteger));
        if (mBuilder.adapter != null && (mBuilder.adapter instanceof MaterialDialogAdapter))
        {
            ((MaterialDialogAdapter)mBuilder.adapter).notifyDataSetChanged();
            return;
        } else
        {
            throw new IllegalStateException("You can only use setSelectedIndices() with the default adapter implementation.");
        }
    }

    public final void setTitle(CharSequence charsequence)
    {
        title.setText(charsequence);
    }

    public final void setTypeface(TextView textview, Typeface typeface)
    {
        if (typeface == null)
        {
            return;
        } else
        {
            textview.setPaintFlags(textview.getPaintFlags() | 0x80);
            textview.setTypeface(typeface);
            return;
        }
    }

    public void show()
    {
        if (Looper.myLooper() != Looper.getMainLooper())
        {
            throw new IllegalStateException("Dialogs can only be shown from the UI thread.");
        }
        try
        {
            super.show();
            return;
        }
        catch (android.view.WindowManager.BadTokenException badtokenexception)
        {
            throw new DialogException("Bad window token, you cannot show a dialog before an Activity is created or after it's hidden.");
        }
    }
}
