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

public class gh extends gf
{

    public gh(Context context, String s)
    {
        a = gd.a(context, s);
        c = "CacheServerOperationsDB";
        b = "serverDataTable";
    }

    public hk b(String s)
    {
        Cursor cursor = a.getReadableDatabase().query(b, null, null, null, null, null, null);
        if (!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        hk hk1;
        int i = cursor.getColumnIndex("objectsId");
        int j = cursor.getColumnIndex("objectsLocalId");
        int k = cursor.getColumnIndex("collectionName");
        int l = cursor.getColumnIndex("key");
        int i1 = cursor.getColumnIndex("value");
        hk hk2 = null;
        do
        {
label0:
            {
                String s3 = cursor.getString(i);
                String s5 = cursor.getString(j);
                String s4 = cursor.getString(k);
                String s1 = cursor.getString(l);
                String s2 = cursor.getString(i1);
                if (!s.equals(s3))
                {
                    hk1 = hk2;
                    if (!s.equals(s5))
                    {
                        break label0;
                    }
                }
                hk1 = hk2;
                if (hk2 == null)
                {
                    if (TextUtils.isEmpty(s4))
                    {
                        hk1 = new hk(s3);
                    } else
                    {
                        hk1 = new hk(s3, s4);
                    }
                }
                hk1.a(s1, s2);
            }
            hk2 = hk1;
        } while (cursor.moveToNext());
_L4:
        cursor.close();
        return hk1;
_L2:
        hk1 = null;
        if (true) goto _L4; else goto _L3
_L3:
    }
}
