// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.wallet:
//            Cart, LineItem

public final class <init>
{

    final Cart zzaCU;

    public <init> addLineItem(LineItem lineitem)
    {
        zzaCU.zzaCT.add(lineitem);
        return this;
    }

    public Cart build()
    {
        return zzaCU;
    }

    public zzaCU setCurrencyCode(String s)
    {
        zzaCU.zzaCS = s;
        return this;
    }

    public zzaCU setLineItems(List list)
    {
        zzaCU.zzaCT.clear();
        zzaCU.zzaCT.addAll(list);
        return this;
    }

    public zzaCU setTotalPrice(String s)
    {
        zzaCU.zzaCR = s;
        return this;
    }

    private (Cart cart)
    {
        zzaCU = cart;
        super();
    }

    zzaCU(Cart cart, zzaCU zzacu)
    {
        this(cart);
    }
}
