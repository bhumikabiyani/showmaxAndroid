// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.io;

import com.showmax.lib.api.model.user.userlist.v2.Userlist;

// Referenced classes of package com.showmax.app.io:
//            UserlistTaskV2

public static interface 
{

    public abstract void onUserlistTaskFinished( , int i);

    public abstract void syncUserlist(Userlist userlist);
}
