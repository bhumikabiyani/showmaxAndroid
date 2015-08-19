// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io;


// Referenced classes of package com.showmax.app.io:
//            DataManager

private static class <init>
{

    private Object mData;
    private long mTimeStamp;

    public Object getData()
    {
        return mData;
    }

    public boolean isValid(long l)
    {
        return l - mTimeStamp < 0x36ee80L;
    }

    public (long l, Object obj)
    {
        mTimeStamp = l;
        mData = obj;
        if (l == -1L)
        {
            mTimeStamp = System.currentTimeMillis();
        }
    }

    public mTimeStamp(Object obj)
    {
        this(-1L, obj);
    }
}
