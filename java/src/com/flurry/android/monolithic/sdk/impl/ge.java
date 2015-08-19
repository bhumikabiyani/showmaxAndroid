// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            gc

public abstract class ge
{

    protected gc a;
    protected String b;

    public ge()
    {
        b = "";
    }

    public boolean a(String s)
    {
        s = a.getReadableDatabase().query(b, null, (new StringBuilder()).append("objectsId='").append(s).append("'").toString(), null, null, null, "objectsId ASC, julianday(timestamp)");
        boolean flag;
        if (s.moveToFirst())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.close();
        return flag;
    }
}
