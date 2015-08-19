// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;

// Referenced classes of package com.showmax.app.ui:
//            ActivityTutorial

public static class mTablet extends FragmentPagerAdapter
{

    private boolean mTablet;

    public int getCount()
    {
        return 3;
    }

    public Fragment getItem(int i)
    {
        int j;
        boolean flag;
        j = 0;
        flag = false;
        i;
        JVM INSTR tableswitch 0 2: default 32
    //                   0 40
    //                   1 62
    //                   2 84;
           goto _L1 _L2 _L3 _L4
_L1:
        i = ((flag) ? 1 : 0);
_L6:
        return newInstance(j, i);
_L2:
        j = 0x7f0d00d3;
        if (mTablet)
        {
            i = 0x7f0200dd;
        } else
        {
            i = 0x7f0200da;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        j = 0x7f0d00d4;
        if (mTablet)
        {
            i = 0x7f0200de;
        } else
        {
            i = 0x7f0200db;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        j = 0x7f0d00d5;
        if (mTablet)
        {
            i = 0x7f0200df;
        } else
        {
            i = 0x7f0200dc;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public CharSequence getPageTitle(int i)
    {
        switch (i)
        {
        default:
            return "THREE";

        case 0: // '\0'
            return "ONE";

        case 1: // '\001'
            return "TWO";
        }
    }

    public (boolean flag, FragmentManager fragmentmanager)
    {
        super(fragmentmanager);
        mTablet = flag;
    }
}
