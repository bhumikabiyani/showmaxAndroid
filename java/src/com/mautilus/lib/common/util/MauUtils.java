// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.common.util;

import android.content.Context;
import android.content.res.Resources;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class MauUtils
{

    public MauUtils()
    {
    }

    public static transient boolean notNull(Object aobj[])
    {
        boolean flag2 = true;
        boolean flag1 = true;
        if (aobj != null)
        {
            int j = aobj.length;
            int i = 0;
            do
            {
                flag2 = flag1;
                if (i >= j)
                {
                    break;
                }
                boolean flag;
                if (aobj[i] != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                flag1 &= flag;
                i++;
            } while (true);
        }
        return flag2;
    }

    public static String readLibraryFile(Context context, int i)
    {
        StringBuilder stringbuilder;
        context = new BufferedReader(new InputStreamReader(context.getResources().openRawResource(i)));
        stringbuilder = new StringBuilder();
_L1:
        String s;
        try
        {
            s = context.readLine();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        stringbuilder.append(s);
        stringbuilder.append('\n');
          goto _L1
        return stringbuilder.toString();
    }
}
