// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.splunk.mint;

import java.util.ArrayList;

// Referenced classes of package com.splunk.mint:
//            Logger

public class ExcludedUrls extends ArrayList
{

    private static final int MIN_URL_LENGTH = 5;
    private static final long serialVersionUID = 0xc46756db9d1d4e39L;

    public ExcludedUrls(String as[])
    {
        int j = as.length;
        for (int i = 0; i < j; i++)
        {
            addValue(as[i]);
        }

    }

    public void addValue(String s)
    {
        if (s != null && s.length() > 5)
        {
            add(s);
            return;
        } else
        {
            Logger.logError((new StringBuilder()).append("The excluded URL: ").append(String.valueOf(s)).append(" should be at least ").append(String.valueOf(5)).append(" characters long!").toString());
            return;
        }
    }
}
