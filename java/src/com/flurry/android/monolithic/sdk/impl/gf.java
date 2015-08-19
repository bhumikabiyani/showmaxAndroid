// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ge, gc, ja, gi, 
//            hk

public abstract class gf extends ge
{

    protected String c;

    public gf()
    {
    }

    public String a(String s, String s1, String s2)
    {
        Object obj;
        Cursor cursor;
        obj = null;
        cursor = a.getReadableDatabase().query(b, null, (new StringBuilder()).append("objectsId='").append(s1).append("'").toString(), null, null, null, "objectsId ASC, julianday(timestamp)");
        s1 = obj;
        if (!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        int k;
        i = cursor.getColumnIndex("key");
        j = cursor.getColumnIndex("value");
        k = cursor.getColumnIndex("collectionName");
_L4:
        s1 = cursor.getString(k);
        String s3 = cursor.getString(i);
        if (!TextUtils.isEmpty(s1) && s1.equals(s2) && s3.equals(s))
        {
            s1 = cursor.getString(j);
        } else
        {
            if (!TextUtils.isEmpty(s1) || !TextUtils.isEmpty(s2) || !s3.equals(s))
            {
                continue; /* Loop/switch isn't completed */
            }
            s1 = cursor.getString(j);
        }
_L2:
        cursor.close();
        return s1;
        if (cursor.moveToNext()) goto _L4; else goto _L3
_L3:
        s1 = obj;
          goto _L2
        if (true) goto _L4; else goto _L5
_L5:
    }

    void a(int i, String s, String s1, String s2, String s3, String s4)
    {
        SQLiteDatabase sqlitedatabase = a.getWritableDatabase();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("objectsId", s2);
        contentvalues.put("objectsLocalId", s3);
        contentvalues.put("timestamp", Long.valueOf(System.currentTimeMillis()));
        contentvalues.put("collectionName", s4);
        contentvalues.put("key", s);
        contentvalues.put("value", s1);
        sqlitedatabase.update(b, contentvalues, (new StringBuilder()).append("primery_key_id='").append(i).append("'").toString(), null);
    }

    public void a(gi gi1)
    {
        ja.a(4, c, (new StringBuilder()).append("--- Insert in ").append(b).append(" : ---").toString());
        SQLiteDatabase sqlitedatabase = a.getWritableDatabase();
        ContentValues contentvalues = new ContentValues();
        String s = gi1.c;
        String s1 = gi1.d;
        String s2 = gi1.e;
        String s3 = gi1.a;
        gi1 = gi1.b;
        contentvalues.put("objectsId", s);
        contentvalues.put("timestamp", Long.valueOf(System.currentTimeMillis()));
        contentvalues.put("objectsLocalId", s1);
        contentvalues.put("collectionName", s2);
        contentvalues.put("key", s3);
        contentvalues.put("value", gi1);
        sqlitedatabase.insert(b, null, contentvalues);
    }

    public void a(String s, String s1, String s2, String s3)
    {
        Cursor cursor;
        ja.a(4, c, (new StringBuilder()).append("--- update item in ").append(b).append(": ---").toString());
        cursor = a.getReadableDatabase().query(b, null, (new StringBuilder()).append("objectsId='").append(s2).append("'").toString(), null, null, null, "objectsId ASC, julianday(timestamp)");
        if (!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        i = cursor.getColumnIndex("primery_key_id");
        j = cursor.getColumnIndex("key");
_L3:
        boolean flag;
        int k = cursor.getInt(i);
        if (!cursor.getString(j).equals(s))
        {
            continue; /* Loop/switch isn't completed */
        }
        a(k, s, s1, s2, null, s3);
        flag = true;
_L4:
        if (!flag)
        {
            a(new gi(s, s1, s2, null, s3));
        }
        cursor.close();
        return;
        if (cursor.moveToNext()) goto _L3; else goto _L2
_L2:
        flag = false;
          goto _L4
    }

    public abstract hk b(String s);
}
