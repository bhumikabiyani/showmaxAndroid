// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.text.TextUtils;
import com.flurry.android.impl.appcloud.AppCloudModule;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            fm, fy, hy, hz, 
//            fv, fu, gr, fx, 
//            hx, hw

public class ft extends fm
{

    private static ft g = null;

    public ft()
    {
    }

    public ft(JSONObject jsonobject)
    {
        a(jsonobject);
    }

    public static void a(ft ft1)
    {
        g = ft1;
    }

    public static void a(String s, String s1, hz hz1)
        throws Exception
    {
        ArrayList arraylist = new ArrayList();
        if (TextUtils.equals(s, fy.f()) && TextUtils.equals(s1, fy.g()) && !TextUtils.isEmpty(fy.d()))
        {
            arraylist.add(new BasicNameValuePair("userid", fy.d()));
            arraylist.add(new BasicNameValuePair("password", s1));
        } else
        {
            arraylist.add(new BasicNameValuePair("email", s));
            arraylist.add(new BasicNameValuePair("password", s1));
        }
        a(((List) (arraylist)), s1, hz1);
    }

    public static void a(String s, String s1, String s2, boolean flag, hz hz1)
    {
        if (TextUtils.isEmpty(s))
        {
            hz1.a(new hy(400, "User name is not set."));
            return;
        }
        if (TextUtils.isEmpty(s1))
        {
            hz1.a(new hy(400, "Password is not set."));
            return;
        }
        if (TextUtils.isEmpty(s2))
        {
            hz1.a(new hy(400, "Email is not set."));
            return;
        }
        if (!flag)
        {
            try
            {
                b(s, s1, hz1);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
            }
            return;
        }
        b(s, s1, new fv(hz1, s, s2, s1));
        return;
    }

    static void a(List list, String s, hz hz1)
    {
        if (!AppCloudModule.getInstance().e())
        {
            hz1.a(new hy(400, "Bad response"));
            return;
        }
        try
        {
            gr.c(false, "v1/user/login", list, new fu(s, hz1));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (List list)
        {
            list.printStackTrace();
        }
    }

    static void b(String s, String s1, hz hz1)
        throws Exception
    {
        ArrayList arraylist = new ArrayList();
        if (TextUtils.equals(s, fy.e()) && TextUtils.equals(s1, fy.g()) && !TextUtils.isEmpty(fy.d()))
        {
            arraylist.add(new BasicNameValuePair("userid", fy.d()));
            arraylist.add(new BasicNameValuePair("password", s1));
        } else
        {
            arraylist.add(new BasicNameValuePair("username", s));
            arraylist.add(new BasicNameValuePair("password", s1));
        }
        a(arraylist, s1, hz1);
    }

    public static ft e()
    {
        return g;
    }

    public static ft f()
    {
        if (e() == null)
        {
            ft ft1 = fy.c();
            if (ft1 != null)
            {
                a(ft1);
                gr.a = fy.h();
                e().c(e().a);
            }
        }
        return e();
    }

    public void a(hw hw)
        throws Exception
    {
        super.a(new fx(this, hw));
    }

    public void a(String s, float f1, hx hx1)
    {
        if (TextUtils.isEmpty(a))
        {
            hx1.a(new hy(400, "Please assign an object id."));
            return;
        } else
        {
            super.a(s, String.valueOf(f1), hx1);
            return;
        }
    }

    public void d(String s)
    {
        d = s;
    }

    public void e(String s)
    {
        e = s;
    }

    public void f(String s)
    {
        f = s;
    }

}
