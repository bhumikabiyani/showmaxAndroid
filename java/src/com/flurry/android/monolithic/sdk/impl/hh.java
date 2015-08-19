// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.util.Base64;
import java.util.List;
import org.apache.http.NameValuePair;

public class hh
{

    public static String a(String s, String s1)
    {
        s = (new StringBuilder()).append(s).append(":").append(s1).toString();
        return (new StringBuilder()).append("Basic ").append(Base64.encodeToString(s.getBytes(), 10)).toString();
    }

    public static String a(List list)
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < list.size(); i++)
        {
            stringbuilder.append((new StringBuilder()).append(a((NameValuePair)list.get(i))).append("/").toString());
        }

        return stringbuilder.toString();
    }

    public static String a(NameValuePair namevaluepair)
    {
        return (new StringBuilder()).append(namevaluepair.getName()).append("=").append(namevaluepair.getValue()).toString().replaceAll(" ", "%20");
    }
}
