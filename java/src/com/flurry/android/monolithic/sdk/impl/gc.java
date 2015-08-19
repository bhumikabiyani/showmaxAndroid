// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class gc extends SQLiteOpenHelper
{

    public gc(Context context, String s)
    {
        super(context, (new StringBuilder()).append("flurry_cache_DB_pending").append(s).toString(), null, 1);
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("create table pendingDataTable (primery_key_id integer primary key autoincrement, timestamp long not null, objectsId text not null, objectsLocalId text, collectionName text, key text not null, value text );");
        sqlitedatabase.execSQL("create table serverDataTable (primery_key_id integer primary key autoincrement, timestamp long not null, objectsId text not null, objectsLocalId text, collectionName text, key text not null, value text );");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
    }
}
