// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            nt, nn, ji

public abstract class nu
    implements nt, Comparable
{

    public nu()
    {
    }

    public int a(nt nt1)
    {
        return nn.b().a(this, nt1, a());
    }

    public abstract ji a();

    public int compareTo(Object obj)
    {
        return a((nt)obj);
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof nt))
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            if (a((nt)obj) != 0)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return nn.b().b(this, a());
    }

    public String toString()
    {
        return nn.b().a(this);
    }
}
