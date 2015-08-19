// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xl

public class ady
{

    public static String a(xl xl1)
    {
        String s2 = xl1.b();
        String s1 = b(xl1, s2);
        String s = s1;
        if (s1 == null)
        {
            s = a(xl1, s2);
        }
        return s;
    }

    public static String a(xl xl1, String s)
    {
        if (!s.startsWith("get") || ("getCallbacks".equals(s) ? c(xl1) : "getMetaClass".equals(s) && e(xl1)))
        {
            return null;
        } else
        {
            return a(s.substring(3));
        }
    }

    protected static String a(String s)
    {
        StringBuilder stringbuilder;
        int j;
        stringbuilder = null;
        j = s.length();
        if (j != 0) goto _L2; else goto _L1
_L1:
        s = null;
_L4:
        return s;
_L2:
        int i = 0;
_L5:
        char c2;
        if (i >= j)
        {
            continue; /* Loop/switch isn't completed */
        }
        char c1 = s.charAt(i);
        c2 = Character.toLowerCase(c1);
        if (c1 != c2)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        if (stringbuilder == null) goto _L4; else goto _L3
_L3:
        return stringbuilder.toString();
        StringBuilder stringbuilder1 = stringbuilder;
        if (stringbuilder == null)
        {
            stringbuilder1 = new StringBuilder(s);
        }
        stringbuilder1.setCharAt(i, c2);
        i++;
        stringbuilder = stringbuilder1;
          goto _L5
    }

    public static String b(xl xl1)
    {
        String s = xl1.b();
        if (s.startsWith("set"))
        {
            s = a(s.substring(3));
            break MISSING_BLOCK_LABEL_23;
        }
        do
        {
            return null;
        } while (s == null || "metaClass".equals(s) && d(xl1));
        return s;
    }

    public static String b(xl xl1, String s)
    {
label0:
        {
            if (s.startsWith("is"))
            {
                xl1 = xl1.d();
                if (xl1 == java/lang/Boolean || xl1 == Boolean.TYPE)
                {
                    break label0;
                }
            }
            return null;
        }
        return a(s.substring(2));
    }

    protected static boolean c(xl xl1)
    {
        xl1 = xl1.d();
        if (xl1 != null && xl1.isArray())
        {
            if ((xl1 = xl1.getComponentType().getPackage()) != null && ((xl1 = xl1.getName()).startsWith("net.sf.cglib") || xl1.startsWith("org.hibernate.repackage.cglib")))
            {
                return true;
            }
        }
        return false;
    }

    protected static boolean d(xl xl1)
    {
        boolean flag1 = false;
        xl1 = xl1.a(0).getPackage();
        boolean flag = flag1;
        if (xl1 != null)
        {
            flag = flag1;
            if (xl1.getName().startsWith("groovy.lang"))
            {
                flag = true;
            }
        }
        return flag;
    }

    protected static boolean e(xl xl1)
    {
        xl1 = xl1.d();
        if (xl1 != null && !xl1.isArray())
        {
            if ((xl1 = xl1.getPackage()) != null && xl1.getName().startsWith("groovy.lang"))
            {
                return true;
            }
        }
        return false;
    }
}
