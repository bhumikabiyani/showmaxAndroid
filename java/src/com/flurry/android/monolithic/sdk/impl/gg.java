// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            gf, gd, gc, hk

public class gg extends gf
{

    public gg(Context context, String s)
    {
        a = gd.a(context, s);
        c = "PendingOperationsDB";
        b = "pendingDataTable";
    }

    public hk b(String s)
    {
        Cursor cursor = a.getReadableDatabase().query(b, null, (new StringBuilder()).append("objectsId='").append(s).append("'").toString(), null, null, null, "objectsId ASC, julianday(timestamp)");
        if (cursor.moveToFirst())
        {
            int i = cursor.getColumnIndex("objectsId");
            int j = cursor.getColumnIndex("collectionName");
            int k = cursor.getColumnIndex("key");
            int l = cursor.getColumnIndex("value");
            String s1 = null;
            do
            {
                String s4 = cursor.getString(i);
                String s5 = cursor.getString(j);
                String s2 = cursor.getString(k);
                String s3 = cursor.getString(l);
                s = s1;
                if (s1 == null)
                {
                    if (TextUtils.isEmpty(s5))
                    {
                        s = new hk(s4);
                    } else
                    {
                        s = new hk(s4, s5);
                    }
                }
                s.a(s2, s3);
                s1 = s;
            } while (cursor.moveToNext());
        } else
        {
            s = null;
        }
        cursor.close();
        return s;
    }
}
