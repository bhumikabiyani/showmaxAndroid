// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.common.util;

import android.graphics.Color;
import java.util.Random;

public class RandomUtils
{

    private static RandomUtils sInstance;
    private Random mRandom;

    private RandomUtils()
    {
    }

    public static RandomUtils getInstance()
    {
        if (sInstance == null)
        {
            sInstance = new RandomUtils();
            sInstance.mRandom = new Random();
        }
        return sInstance;
    }

    public int generateColor()
    {
        return Color.rgb(mRandom.nextInt(255), mRandom.nextInt(255), mRandom.nextInt(255));
    }

    public int generateDirection(int i)
    {
        int j = i;
        if (mRandom.nextInt(10) % 2 == 0)
        {
            j = i * -1;
        }
        return j;
    }

    public float generateFloat()
    {
        return mRandom.nextFloat();
    }

    public int generateInt(int i, int j)
    {
        int k;
        for (k = mRandom.nextInt(j); k < i; k = mRandom.nextInt(j)) { }
        return k;
    }
}
