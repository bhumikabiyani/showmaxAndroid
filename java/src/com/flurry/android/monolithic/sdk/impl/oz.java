// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ot

public class oz extends IOException
{

    protected ot a;

    protected oz(String s)
    {
        super(s);
    }

    protected oz(String s, ot ot1)
    {
        this(s, ot1, null);
    }

    protected oz(String s, ot ot1, Throwable throwable)
    {
        super(s);
        if (throwable != null)
        {
            initCause(throwable);
        }
        a = ot1;
    }

    protected oz(String s, Throwable throwable)
    {
        this(s, null, throwable);
    }

    public ot a()
    {
        return a;
    }

    public String getMessage()
    {
        Object obj = super.getMessage();
        String s = ((String) (obj));
        if (obj == null)
        {
            s = "N/A";
        }
        ot ot1 = a();
        obj = s;
        if (ot1 != null)
        {
            obj = new StringBuilder();
            ((StringBuilder) (obj)).append(s);
            ((StringBuilder) (obj)).append('\n');
            ((StringBuilder) (obj)).append(" at ");
            ((StringBuilder) (obj)).append(ot1.toString());
            obj = ((StringBuilder) (obj)).toString();
        }
        return ((String) (obj));
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getName()).append(": ").append(getMessage()).toString();
    }
}
