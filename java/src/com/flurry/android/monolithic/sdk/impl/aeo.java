// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aet, ou, oz, or, 
//            aep, rx, aeu, aez, 
//            ru

public final class aeo extends aet
{

    protected ArrayList c;

    public aeo(aez aez)
    {
        super(aez);
    }

    private boolean a(ArrayList arraylist)
    {
        int j = arraylist.size();
        if (o() != j)
        {
            return false;
        }
        for (int i = 0; i < j; i++)
        {
            if (!((ou)c.get(i)).equals(arraylist.get(i)))
            {
                return false;
            }
        }

        return true;
    }

    private void b(ou ou1)
    {
        if (c == null)
        {
            c = new ArrayList();
        }
        c.add(ou1);
    }

    public ou a(String s)
    {
        return null;
    }

    public final void a(or or1, ru ru)
        throws IOException, oz
    {
        or1.b();
        if (c != null)
        {
            for (Iterator iterator = c.iterator(); iterator.hasNext(); ((aep)(ou)iterator.next()).a(or1, ru)) { }
        }
        or1.c();
    }

    public void a(or or1, ru ru, rx rx1)
        throws IOException, oz
    {
        rx1.c(this, or1);
        if (c != null)
        {
            for (Iterator iterator = c.iterator(); iterator.hasNext(); ((aep)(ou)iterator.next()).a(or1, ru)) { }
        }
        rx1.f(this, or1);
    }

    public void a(ou ou1)
    {
        Object obj = ou1;
        if (ou1 == null)
        {
            obj = r();
        }
        b(((ou) (obj)));
    }

    public boolean a()
    {
        return true;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null)
            {
                return false;
            }
            if (obj.getClass() != getClass())
            {
                return false;
            }
            obj = (aeo)obj;
            if (c == null || c.size() == 0)
            {
                if (((aeo) (obj)).o() != 0)
                {
                    return false;
                }
            } else
            {
                return ((aeo) (obj)).a(c);
            }
        }
        return true;
    }

    public int hashCode()
    {
        if (c != null) goto _L2; else goto _L1
_L1:
        int j = 1;
_L4:
        return j;
_L2:
        int i = c.size();
        Iterator iterator = c.iterator();
        do
        {
            j = i;
            if (!iterator.hasNext())
            {
                continue;
            }
            ou ou1 = (ou)iterator.next();
            if (ou1 != null)
            {
                i = ou1.hashCode() ^ i;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
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
            return c.iterator();
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder((o() << 4) + 16);
        stringbuilder.append('[');
        if (c != null)
        {
            int j = c.size();
            for (int i = 0; i < j; i++)
            {
                if (i > 0)
                {
                    stringbuilder.append(',');
                }
                stringbuilder.append(((ou)c.get(i)).toString());
            }

        }
        stringbuilder.append(']');
        return stringbuilder.toString();
    }
}
