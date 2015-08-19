// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.location.Location;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            fa, eh, ja, je, 
//            ek, ej

public class ez
{

    private static final String b = com/flurry/android/monolithic/sdk/impl/ez.getSimpleName();
    byte a[];

    public ez(fa fa1)
        throws IOException
    {
        Object obj1;
        obj1 = null;
        Object obj;
        ByteArrayOutputStream bytearrayoutputstream;
        bytearrayoutputstream = new ByteArrayOutputStream();
        obj = new DataOutputStream(bytearrayoutputstream);
        ((DataOutputStream) (obj)).writeShort(1);
        ((DataOutputStream) (obj)).writeUTF(fa1.a());
        ((DataOutputStream) (obj)).writeLong(fa1.b());
        ((DataOutputStream) (obj)).writeLong(fa1.c());
        ((DataOutputStream) (obj)).writeLong(fa1.d());
        ((DataOutputStream) (obj)).writeUTF(fa1.e());
        ((DataOutputStream) (obj)).writeUTF(fa1.f());
        ((DataOutputStream) (obj)).writeByte(fa1.g());
        ((DataOutputStream) (obj)).writeUTF(fa1.h());
        if (fa1.i() != null) goto _L2; else goto _L1
_L1:
        ((DataOutputStream) (obj)).writeBoolean(false);
_L6:
        ((DataOutputStream) (obj)).writeInt(fa1.j());
        ((DataOutputStream) (obj)).writeByte(-1);
        ((DataOutputStream) (obj)).writeByte(-1);
        ((DataOutputStream) (obj)).writeByte(fa1.k());
        if (fa1.l() != null) goto _L4; else goto _L3
_L3:
        ((DataOutputStream) (obj)).writeBoolean(false);
_L7:
        obj1 = fa1.p();
        ((DataOutputStream) (obj)).writeShort(((Map) (obj1)).size());
        java.util.Map.Entry entry;
        for (obj1 = ((Map) (obj1)).entrySet().iterator(); ((Iterator) (obj1)).hasNext(); ((DataOutputStream) (obj)).writeInt(((eh)entry.getValue()).a))
        {
            entry = (java.util.Map.Entry)((Iterator) (obj1)).next();
            ((DataOutputStream) (obj)).writeUTF((String)entry.getKey());
        }

          goto _L5
        obj1;
        fa1 = ((fa) (obj));
        obj = obj1;
_L11:
        ja.a(6, b, "", ((Throwable) (obj)));
        throw obj;
        obj1;
        obj = fa1;
        fa1 = ((fa) (obj1));
_L10:
        je.a(((java.io.Closeable) (obj)));
        throw fa1;
_L2:
        ((DataOutputStream) (obj)).writeBoolean(true);
        ((DataOutputStream) (obj)).writeDouble(a(fa1.i().getLatitude()));
        ((DataOutputStream) (obj)).writeDouble(a(fa1.i().getLongitude()));
        ((DataOutputStream) (obj)).writeFloat(fa1.i().getAccuracy());
          goto _L6
_L4:
        ((DataOutputStream) (obj)).writeBoolean(true);
        ((DataOutputStream) (obj)).writeLong(fa1.l().longValue());
          goto _L7
_L5:
        obj1 = fa1.n();
        ((DataOutputStream) (obj)).writeShort(((List) (obj1)).size());
        for (obj1 = ((List) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); ((DataOutputStream) (obj)).write(((ek)((Iterator) (obj1)).next()).e())) { }
        ((DataOutputStream) (obj)).writeBoolean(fa1.q());
        obj1 = fa1.o();
        int i;
        int j;
        int k;
        j = 0;
        k = 0;
        i = 0;
_L12:
        if (j >= ((List) (obj1)).size())
        {
            break MISSING_BLOCK_LABEL_440;
        }
        k += ((ej)((List) (obj1)).get(j)).a();
        if (k <= 0x27100)
        {
            break MISSING_BLOCK_LABEL_531;
        }
        ja.a(5, b, "Error Log size exceeded. No more event details logged.");
        ((DataOutputStream) (obj)).writeInt(fa1.m());
        ((DataOutputStream) (obj)).writeShort(i);
        j = 0;
_L9:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        ((DataOutputStream) (obj)).write(((ej)((List) (obj1)).get(j)).b());
        j++;
        if (true) goto _L9; else goto _L8
_L8:
        ((DataOutputStream) (obj)).writeShort(0);
        ((DataOutputStream) (obj)).writeShort(0);
        a = bytearrayoutputstream.toByteArray();
        je.a(((java.io.Closeable) (obj)));
        return;
        fa1;
        obj = null;
          goto _L10
        obj;
        fa1 = ((fa) (obj1));
          goto _L11
        fa1;
          goto _L10
        i++;
        j++;
          goto _L12
    }

    public ez(byte abyte0[])
    {
        a = abyte0;
    }

    private double a(double d)
    {
        return (double)Math.round(d * 1000D) / 1000D;
    }

    public byte[] a()
    {
        return a;
    }

}
