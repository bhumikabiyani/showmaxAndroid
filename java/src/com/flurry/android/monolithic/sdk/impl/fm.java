// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.text.TextUtils;
import com.flurry.android.impl.appcloud.AppCloudModule;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.Vector;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hm, go, fo, hi, 
//            hk, fn, fp, gn, 
//            gl, gm, hd, fr, 
//            hw, hx

public abstract class fm
{

    protected String a;
    protected String b;
    protected HashMap c;
    protected String d;
    protected String e;
    protected String f;

    public fm()
    {
        a = "";
        b = "";
        c = new HashMap();
    }

    public float a(String s)
    {
label0:
        {
            float f1;
            try
            {
                if (!c.containsKey(s))
                {
                    break label0;
                }
                f1 = Float.parseFloat((String)c.get(s));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                return 0.0F;
            }
            return f1;
        }
        return 0.0F;
    }

    public String a()
    {
        return a;
    }

    protected void a(fr fr)
    {
        try
        {
            hm hm1 = new hm(a);
            go.a().b(hm1, new fo(this, fr));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (fr fr)
        {
            fr.printStackTrace();
        }
    }

    public void a(hw hw)
        throws Exception
    {
        Object obj = new hk(a);
        ((hk) (obj)).a(b());
        if (e != null && !e.equals(""))
        {
            ((hk) (obj)).a("username", e);
        }
        if (f != null && !f.equals(""))
        {
            ((hk) (obj)).a("password", f);
        }
        if (d != null && !d.equals(""))
        {
            ((hk) (obj)).a("email", d);
        }
        if (TextUtils.isEmpty(a))
        {
            hm hm1 = new hm(null);
            obj = ((hk) (obj)).a();
            for (int i = 0; i < ((Vector) (obj)).size(); i++)
            {
                hm1.a(((NameValuePair)((Vector) (obj)).get(i)).getName(), ((NameValuePair)((Vector) (obj)).get(i)).getValue());
            }

            go.a().a(hm1, new fn(this, hw));
        }
    }

    public void a(String s, Object obj)
    {
        if (s.equals("code") || s.equals("note"))
        {
            return;
        }
        if (c.containsKey(s))
        {
            c.remove(s);
            c.put(s, obj.toString());
            return;
        } else
        {
            c.put(s, obj.toString());
            return;
        }
    }

    protected void a(String s, String s1, hx hx)
    {
        hm hm1 = new hm(a);
        hm1.a(s, s1);
        go.a().c(hm1, new fp(this, hx));
    }

    protected void a(JSONObject jsonobject)
    {
        if (jsonobject.has("username"))
        {
            e = jsonobject.getString("username");
        }
        if (jsonobject.has("email"))
        {
            d = jsonobject.getString("email");
        }
        if (jsonobject.has("_id"))
        {
            a = jsonobject.getString("_id");
        }
          goto _L1
_L3:
        int i;
        if (i >= jsonobject.length())
        {
            break MISSING_BLOCK_LABEL_109;
        }
        String s = jsonobject.names().getString(i);
        String s1 = jsonobject.getString(s);
        c.put(s, s1);
        i++;
        continue; /* Loop/switch isn't completed */
        jsonobject;
        jsonobject.printStackTrace();
        return;
_L1:
        i = 0;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public Vector b()
    {
        Vector vector = new Vector();
        Iterator iterator = c.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s = (String)entry.getKey();
            if (!s.startsWith("_") && !s.equals("username") && !s.equals("email") && !s.equals("code") && !s.equals("note"))
            {
                vector.add(new BasicNameValuePair(s, (String)entry.getValue()));
            }
        } while (true);
        return vector;
    }

    public void b(String s)
    {
        a = s;
    }

    public void c(String s)
    {
        boolean flag = false;
        hk hk1;
        hk hk2;
        int i;
        if (go.b().c().b(s))
        {
            hk1 = go.b().c().a(s);
        } else
        {
            hk1 = null;
        }
        if (go.b().b().b(s))
        {
            hk2 = go.b().b().a(s);
        } else
        {
            hk2 = null;
        }
        if (hk1 != null || hk2 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        b(s);
        if (hk2 != null)
        {
            for (i = 0; i < hk2.a().size(); i++)
            {
                a(((NameValuePair)hk2.a().get(i)).getName(), ((NameValuePair)hk2.a().get(i)).getValue());
            }

        }
        if (hk1 != null)
        {
            i = ((flag) ? 1 : 0);
            while (i < hk1.a().size()) 
            {
                a(((NameValuePair)hk1.a().get(i)).getName(), ((NameValuePair)hk1.a().get(i)).getValue());
                i++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public boolean c()
    {
        if (TextUtils.isEmpty(a))
        {
            return false;
        } else
        {
            return AppCloudModule.getInstance().b().a(a);
        }
    }

    public void d()
    {
        for (int i = 0; i < b().size(); i++)
        {
            String s = ((NameValuePair)b().get(i)).getName();
            String s1 = ((NameValuePair)b().get(i)).getValue();
            go.b().b().c(s, s1, a, b);
        }

    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append("id : ").append(a).append(" ; ").toString();
        Vector vector = b();
        for (int i = 0; i < vector.size(); i++)
        {
            s = (new StringBuilder()).append(s).append("\n( key : value ) = ( ").append(((NameValuePair)vector.get(i)).getName()).append(" : ").append(((NameValuePair)vector.get(i)).getValue()).append(" )").toString();
        }

        return s;
    }
}
