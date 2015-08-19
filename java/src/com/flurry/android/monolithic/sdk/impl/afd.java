// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aet, ou, oz, or, 
//            aep, rx, aeu, aev, 
//            aff, aez, ru

public class afd extends aet
{

    protected LinkedHashMap c;

    public afd(aez aez)
    {
        super(aez);
        c = null;
    }

    private final ou b(String s, ou ou1)
    {
        if (c == null)
        {
            c = new LinkedHashMap();
        }
        return (ou)c.put(s, ou1);
    }

    public ou a(String s)
    {
        if (c != null)
        {
            return (ou)c.get(s);
        } else
        {
            return null;
        }
    }

    public ou a(String s, ou ou1)
    {
        Object obj = ou1;
        if (ou1 == null)
        {
            obj = r();
        }
        return b(s, ((ou) (obj)));
    }

    public final void a(or or1, ru ru)
        throws IOException, oz
    {
        or1.d();
        if (c != null)
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = c.entrySet().iterator(); iterator.hasNext(); ((aep)entry.getValue()).a(or1, ru))
            {
                entry = (java.util.Map.Entry)iterator.next();
                or1.a((String)entry.getKey());
            }

        }
        or1.e();
    }

    public void a(or or1, ru ru, rx rx1)
        throws IOException, oz
    {
        rx1.b(this, or1);
        if (c != null)
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = c.entrySet().iterator(); iterator.hasNext(); ((aep)entry.getValue()).a(or1, ru))
            {
                entry = (java.util.Map.Entry)iterator.next();
                or1.a((String)entry.getKey());
            }

        }
        rx1.e(this, or1);
    }

    public boolean b()
    {
        return true;
    }

    public boolean equals(Object obj)
    {
label0:
        {
            if (obj == this)
            {
                return true;
            }
            if (obj == null)
            {
                return false;
            }
            if (obj.getClass() != getClass())
            {
                return false;
            }
            obj = (afd)obj;
            if (((afd) (obj)).o() != o())
            {
                return false;
            }
            if (c == null)
            {
                break label0;
            }
            Iterator iterator = c.entrySet().iterator();
            Object obj1;
            Object obj2;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                obj2 = (java.util.Map.Entry)iterator.next();
                obj1 = (String)((java.util.Map.Entry) (obj2)).getKey();
                obj2 = (ou)((java.util.Map.Entry) (obj2)).getValue();
                obj1 = ((afd) (obj)).a(((String) (obj1)));
            } while (obj1 != null && ((ou) (obj1)).equals(obj2));
            return false;
        }
        return true;
    }

    public int hashCode()
    {
        if (c == null)
        {
            return -1;
        } else
        {
            return c.hashCode();
        }
    }

    public int o()
    {
        if (c == null)
        {
            return 0;
        } else
        {
            return c.size();
        }
    }

    public Iterator p()
    {
        if (c == null)
        {
            return aeu.a();
        } else
        {
            return c.values().iterator();
        }
    }

    public Iterator q()
    {
        if (c == null)
        {
            return aev.a();
        } else
        {
            return c.keySet().iterator();
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder((o() << 4) + 32);
        stringbuilder.append("{");
        if (c != null)
        {
            Iterator iterator = c.entrySet().iterator();
            for (int i = 0; iterator.hasNext(); i++)
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                if (i > 0)
                {
                    stringbuilder.append(",");
                }
                aff.a(stringbuilder, (String)entry.getKey());
                stringbuilder.append(':');
                stringbuilder.append(((ou)entry.getValue()).toString());
            }

        }
        stringbuilder.append("}");
        return stringbuilder.toString();
    }
}
