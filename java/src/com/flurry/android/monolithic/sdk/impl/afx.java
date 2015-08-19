// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afw, ow, ov, pb

public class afx extends afw
{

    protected final ow e[];
    protected int f;

    protected afx(ow aow[])
    {
        super(aow[0]);
        e = aow;
        f = 1;
    }

    public static afx a(ow ow1, ow ow2)
    {
        if (!(ow1 instanceof afx) && !(ow2 instanceof afx))
        {
            return new afx(new ow[] {
                ow1, ow2
            });
        }
        ArrayList arraylist = new ArrayList();
        if (ow1 instanceof afx)
        {
            ((afx)ow1).a(((List) (arraylist)));
        } else
        {
            arraylist.add(ow1);
        }
        if (ow2 instanceof afx)
        {
            ((afx)ow2).a(((List) (arraylist)));
        } else
        {
            arraylist.add(ow2);
        }
        return new afx((ow[])arraylist.toArray(new ow[arraylist.size()]));
    }

    protected boolean A()
    {
        if (f >= e.length)
        {
            return false;
        } else
        {
            ow aow[] = e;
            int i = f;
            f = i + 1;
            d = aow[i];
            return true;
        }
    }

    protected void a(List list)
    {
        int i = f;
        int j = e.length;
        i--;
        while (i < j) 
        {
            ow ow1 = e[i];
            if (ow1 instanceof afx)
            {
                ((afx)ow1).a(list);
            } else
            {
                list.add(ow1);
            }
            i++;
        }
    }

    public pb b()
        throws IOException, ov
    {
        pb pb = d.b();
        if (pb != null)
        {
            return pb;
        }
        while (A()) 
        {
            pb pb1 = d.b();
            if (pb1 != null)
            {
                return pb1;
            }
        }
        return null;
    }

    public void close()
        throws IOException
    {
        do
        {
            d.close();
        } while (A());
    }
}
