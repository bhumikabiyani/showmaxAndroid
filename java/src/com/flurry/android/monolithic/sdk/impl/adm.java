// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            adn, adk, afm

public class adm
{

    final adk a;

    public adm(adk adk1)
    {
        a = adk1;
    }

    protected afm a(adn adn1)
        throws IllegalArgumentException
    {
        if (!adn1.hasMoreTokens())
        {
            throw a(adn1, "Unexpected end-of-string");
        }
        Class class1 = a(adn1.nextToken(), adn1);
        if (adn1.hasMoreTokens())
        {
            String s = adn1.nextToken();
            if ("<".equals(s))
            {
                return a.a(class1, b(adn1));
            }
            adn1.a(s);
        }
        return a.a(class1, null);
    }

    public afm a(String s)
        throws IllegalArgumentException
    {
        s = new adn(s.trim());
        afm afm = a(((adn) (s)));
        if (s.hasMoreTokens())
        {
            throw a(((adn) (s)), "Unexpected tokens after complete type");
        } else
        {
            return afm;
        }
    }

    protected Class a(String s, adn adn1)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s, true, Thread.currentThread().getContextClassLoader());
        }
        catch (Exception exception)
        {
            if (exception instanceof RuntimeException)
            {
                throw (RuntimeException)exception;
            } else
            {
                throw a(adn1, (new StringBuilder()).append("Can not locate class '").append(s).append("', problem: ").append(exception.getMessage()).toString());
            }
        }
        return class1;
    }

    protected IllegalArgumentException a(adn adn1, String s)
    {
        return new IllegalArgumentException((new StringBuilder()).append("Failed to parse type '").append(adn1.a()).append("' (remaining: '").append(adn1.b()).append("'): ").append(s).toString());
    }

    protected List b(adn adn1)
        throws IllegalArgumentException
    {
        ArrayList arraylist = new ArrayList();
        do
        {
label0:
            {
                if (adn1.hasMoreTokens())
                {
                    arraylist.add(a(adn1));
                    if (adn1.hasMoreTokens())
                    {
                        break label0;
                    }
                }
                throw a(adn1, "Unexpected end-of-string");
            }
            String s = adn1.nextToken();
            if (">".equals(s))
            {
                return arraylist;
            }
            if (!",".equals(s))
            {
                throw a(adn1, (new StringBuilder()).append("Unexpected token '").append(s).append("', expected ',' or '>')").toString());
            }
        } while (true);
    }
}
