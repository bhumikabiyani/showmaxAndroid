// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.UUID;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            um, oz, qm

public class uv extends um
{

    public uv()
    {
        super(java/util/UUID);
    }

    protected Object a(Object obj, qm qm1)
        throws IOException, oz
    {
        return b(obj, qm1);
    }

    protected Object a(String s, qm qm1)
        throws IOException, oz
    {
        return b(s, qm1);
    }

    protected UUID b(Object obj, qm qm1)
        throws IOException, oz
    {
        if (obj instanceof byte[])
        {
            obj = (byte[])(byte[])obj;
            if (obj.length != 16)
            {
                qm1.b((new StringBuilder()).append("Can only construct UUIDs from 16 byte arrays; got ").append(obj.length).append(" bytes").toString());
            }
            obj = new DataInputStream(new ByteArrayInputStream(((byte []) (obj))));
            return new UUID(((DataInputStream) (obj)).readLong(), ((DataInputStream) (obj)).readLong());
        } else
        {
            super.a(obj, qm1);
            return null;
        }
    }

    protected UUID b(String s, qm qm1)
        throws IOException, oz
    {
        return UUID.fromString(s);
    }
}
