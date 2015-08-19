// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.ui.widget;


// Referenced classes of package com.showmax.lib.api.ui.widget:
//            AuthWebView

public static interface 
{

    public abstract void onAuthSuccessful(String s, String s1, String s2, Boolean boolean1);

    public abstract void onCloseButtonClicked();

    public abstract void onPageError(int i, String s, String s1);

    public abstract void onPageLoadingProgressChanged(int i);
}
