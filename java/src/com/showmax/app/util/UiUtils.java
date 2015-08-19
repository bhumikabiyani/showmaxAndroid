// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util;

import android.content.Context;
import android.text.Layout;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import com.showmax.app.ui.widget.PlayButton;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.user.userlist.v2.Userlist;
import com.showmax.lib.api.utils.LanguageUtils;
import com.showmax.lib.api.utils.UserPrefs;

public class UiUtils
{

    public UiUtils()
    {
    }

    public static void checkMyFlixButton(Asset asset, View view, int i)
    {
        ImageButton imagebutton;
        if (asset != null)
        {
            if ((imagebutton = (ImageButton)view.findViewById(i)) != null)
            {
                imagebutton.setVisibility(0);
                if (UserPrefs.isUserSignedIn(view.getContext()))
                {
                    if (isAssetBookmarked(view.getContext(), asset))
                    {
                        imagebutton.setImageResource(0x7f020097);
                    } else
                    {
                        imagebutton.setImageResource(0x7f020087);
                    }
                } else
                {
                    imagebutton.setVisibility(8);
                }
                imagebutton.invalidate();
                return;
            }
        }
    }

    public static void checkPlayButton(Asset asset, View view, int i)
    {
        PlayButton playbutton;
        if (asset != null)
        {
            if ((playbutton = (PlayButton)view.findViewById(i)) != null)
            {
                view = UserPrefs.getCurrentLanguage(view.getContext());
                if (asset.getMainVideo(LanguageUtils.getInstance().convert(view)) != null)
                {
                    playbutton.setVisibility(0);
                    playbutton.setTag(asset);
                } else
                {
                    playbutton.setVisibility(8);
                }
                playbutton.showPurchaseButton("8.00 $");
                playbutton.invalidate();
                return;
            }
        }
    }

    public static void checkTrailerButton(Asset asset, View view, int i)
    {
        View view1;
        if (asset != null)
        {
            if ((view1 = view.findViewById(i)) != null)
            {
                view = UserPrefs.getCurrentLanguage(view.getContext());
                if (asset.getTrailerVideo(LanguageUtils.getInstance().convert(view)) != null)
                {
                    view1.setVisibility(0);
                    view1.setTag(asset);
                } else
                {
                    view1.setVisibility(8);
                }
                view1.invalidate();
                return;
            }
        }
    }

    private static boolean isAssetBookmarked(Context context, Asset asset)
    {
        if (asset != null)
        {
            context = UserPrefs.getUserlist(context, com.showmax.lib.api.model.user.userlist.v2.Userlist.UserlistType.BOOKMARKS);
            if (context != null)
            {
                return context.contains(asset);
            }
        }
        return false;
    }

    public static void setTextAndEllipsize(TextView textview, String s, int i)
    {
        if (textview == null || s == null)
        {
            return;
        } else
        {
            textview.setText(s);
            textview.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(textview, i) {

                final int val$maxLinesCount;
                final TextView val$textView;

                public void onGlobalLayout()
                {
                    textView.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    if (textView.getLineCount() > maxLinesCount)
                    {
                        int j = textView.getLayout().getLineEnd(maxLinesCount - 1);
                        String s1 = (new StringBuilder()).append(textView.getText().subSequence(0, j - 1)).append("\u2026").toString();
                        textView.setText(s1);
                    }
                }

            
            {
                textView = textview;
                maxLinesCount = i;
                super();
            }
            });
            return;
        }
    }

    public static void showNotImplementedYetToast(Context context)
    {
        Toast.makeText(context, "Not implemented yet.", 0).show();
    }

    public static void showNotSignedInToast(Context context)
    {
        Toast.makeText(context, 0x7f0d00ae, 0).show();
    }

    public static void showToast(Context context, String s)
    {
        Toast.makeText(context, s, 0).show();
    }
}
