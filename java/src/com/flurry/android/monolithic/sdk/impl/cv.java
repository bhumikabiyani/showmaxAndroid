// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cx, cu, ja, db

public final class cv
    implements cx
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/cv.getSimpleName();

    public cv()
    {
    }

    private boolean a(String s, String s1, cu cu1)
    {
        boolean flag;
        boolean flag1;
        flag1 = false;
        if (TextUtils.isEmpty(s) || TextUtils.isEmpty(s1) || cu1 == null)
        {
            return false;
        }
        flag = flag1;
        if (TextUtils.isEmpty(cu1.c()))
        {
            break MISSING_BLOCK_LABEL_48;
        }
        Class.forName(cu1.c());
        flag = true;
_L1:
        Object obj;
        if (!flag)
        {
            ja.b(a, (new StringBuilder()).append(s).append(": package=\"").append(s1).append("\": apk should include ad provider library with name=\"").append(cu1.a()).append("\" and version=\"").append(cu1.b()).append("\" or higher").toString());
            return flag;
        } else
        {
            ja.a(3, a, (new StringBuilder()).append(s).append(": package=\"").append(s1).append("\": apk has ad provider library with name=\"").append(cu1.a()).append("\" and version=\"").append(cu1.b()).append("\" or higher").toString());
            return flag;
        }
        obj;
        ja.a(6, a, "failed to find third party ad provider api with exception: ", ((Throwable) (obj)));
        flag = flag1;
          goto _L1
        obj;
        ja.a(6, a, "failed to initialize third party ad provider api with exception: ", ((Throwable) (obj)));
        flag = flag1;
          goto _L1
        obj;
        ja.a(6, a, "failed to link third party ad provider api with exception: ", ((Throwable) (obj)));
        flag = flag1;
          goto _L1
    }

    public boolean a(Context context, db db1)
    {
        String s;
        if (db1 != null)
        {
            if (!TextUtils.isEmpty(s = db1.a()) && (db1 = db1.b()) != null)
            {
                context = context.getPackageName();
                db1 = db1.iterator();
                boolean flag = true;
                do
                {
                    if (!db1.hasNext())
                    {
                        break;
                    }
                    if (!a(s, ((String) (context)), (cu)db1.next()))
                    {
                        flag = false;
                    }
                } while (true);
                return flag;
            }
        }
        return false;
    }

}
