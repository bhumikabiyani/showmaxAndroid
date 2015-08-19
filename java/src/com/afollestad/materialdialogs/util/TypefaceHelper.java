// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.util;

import android.content.Context;
import android.graphics.Typeface;
import android.support.v4.util.SimpleArrayMap;

public class TypefaceHelper
{

    private static final SimpleArrayMap cache = new SimpleArrayMap();

    public TypefaceHelper()
    {
    }

    public static Typeface get(Context context, String s)
    {
        SimpleArrayMap simplearraymap = cache;
        simplearraymap;
        JVM INSTR monitorenter ;
        boolean flag = cache.containsKey(s);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        context = Typeface.createFromAsset(context.getAssets(), String.format("fonts/%s", new Object[] {
            s
        }));
        cache.put(s, context);
        simplearraymap;
        JVM INSTR monitorexit ;
        return context;
        context;
        simplearraymap;
        JVM INSTR monitorexit ;
        return null;
        context;
        simplearraymap;
        JVM INSTR monitorexit ;
        throw context;
        context = (Typeface)cache.get(s);
        simplearraymap;
        JVM INSTR monitorexit ;
        return context;
    }

}
