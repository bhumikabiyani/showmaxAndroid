// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ft

public class fq
{

    ft a;
    JSONObject b;

    public fq(JSONObject jsonobject)
    {
        b = jsonobject;
    }

    public boolean a()
    {
label0:
        {
label1:
            {
                boolean flag1 = false;
                boolean flag = flag1;
                int i;
                try
                {
                    if (b == null)
                    {
                        break label0;
                    }
                    if (b.getInt("code") == 200)
                    {
                        break label1;
                    }
                    i = b.getInt("code");
                }
                catch (JSONException jsonexception)
                {
                    jsonexception.printStackTrace();
                    return false;
                }
                flag = flag1;
                if (i != 201)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    public String b()
    {
        String s;
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        s = b.get("note").toString();
        return s;
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
        return "Bad response";
    }

    public JSONObject c()
    {
        return b;
    }

    public int d()
    {
        int i;
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        i = b.getInt("code");
        return i;
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
        return 400;
    }
}
