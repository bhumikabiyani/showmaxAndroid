// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.mautilus.lib.common.util.MauLog;

public class PlayButton extends FrameLayout
{
    public static final class State extends Enum
    {

        private static final State $VALUES[];
        public static final State PLAY;
        public static final State PURCHASE;
        public static final State PURCHASED;

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(com/showmax/app/ui/widget/PlayButton$State, s);
        }

        public static State[] values()
        {
            return (State[])$VALUES.clone();
        }

        static 
        {
            PLAY = new State("PLAY", 0);
            PURCHASE = new State("PURCHASE", 1);
            PURCHASED = new State("PURCHASED", 2);
            $VALUES = (new State[] {
                PLAY, PURCHASE, PURCHASED
            });
        }

        private State(String s, int i)
        {
            super(s, i);
        }
    }


    private View mPlay;
    private State mPlayButtonState;
    private View mPurchaseContainer;
    private TextView mPurchasePriceTv;
    private View mPurchasedContainer;
    private TextView mPurchasedTimeRemainingTv;

    public PlayButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init(attributeset, 0);
    }

    public PlayButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init(attributeset, i);
    }

    private String getRemainingTimeString(int i)
    {
        if (i > 0)
        {
            long l = (i / 60) % 60;
            long l1 = i / 60 / 60;
            MauLog.v("[PlayButton]::[getRemainingTimeString]::[remainingTime: %d]::[diffMinutes: %d]::[diffHours: %d]::", new Object[] {
                Integer.valueOf(i), Long.valueOf(l), Long.valueOf(l1)
            });
            StringBuilder stringbuilder = new StringBuilder();
            if (l1 > 0L)
            {
                String s = getResources().getString(0x7f0d009c);
                stringbuilder.append(l1).append(s);
            } else
            {
                String s1 = getResources().getString(0x7f0d00ba);
                stringbuilder.append(l).append(s1);
            }
            return stringbuilder.toString();
        } else
        {
            return "-";
        }
    }

    private void init(AttributeSet attributeset, int i)
    {
        mPlayButtonState = State.PLAY;
        setClickable(true);
        initViews();
    }

    private void initViews()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f03008b, this, true);
        mPlay = findViewById(0x7f0b019d);
        mPurchaseContainer = findViewById(0x7f0b019e);
        mPurchasedContainer = findViewById(0x7f0b01a1);
        mPurchasePriceTv = (TextView)findViewById(0x7f0b01a0);
        mPurchasedTimeRemainingTv = (TextView)findViewById(0x7f0b01a3);
    }

    public State getState()
    {
        return mPlayButtonState;
    }

    public void showPlayButton()
    {
        mPlayButtonState = State.PLAY;
        mPlay.setVisibility(0);
        mPurchaseContainer.setVisibility(8);
        mPurchasedContainer.setVisibility(8);
    }

    public void showPlayRemainingButton(int i)
    {
        mPlayButtonState = State.PURCHASED;
        mPurchasedTimeRemainingTv.setText(getRemainingTimeString(i));
        mPurchasedContainer.setVisibility(0);
        mPlay.setVisibility(8);
        mPurchaseContainer.setVisibility(8);
    }

    public void showPurchaseButton(String s)
    {
        mPlayButtonState = State.PURCHASE;
        mPurchasePriceTv.setText(s);
        mPurchaseContainer.setVisibility(0);
        mPlay.setVisibility(8);
        mPurchasedContainer.setVisibility(8);
    }
}
