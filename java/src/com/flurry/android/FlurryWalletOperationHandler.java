// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android;


// Referenced classes of package com.flurry.android:
//            FlurryWalletError

public interface FlurryWalletOperationHandler
{

    public abstract void onError(FlurryWalletError flurrywalleterror);

    public abstract void onOperationSucceed();
}
