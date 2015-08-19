// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            rn

public class rm extends rn
{

    public rm()
    {
    }

    public String a(String s)
    {
        if (s != null)
        {
            int k1 = s.length();
            StringBuilder stringbuilder = new StringBuilder(k1 * 2);
            int j1 = 0;
            int j = 0;
            int i = 0;
            while (j1 < k1) 
            {
                char c = s.charAt(j1);
                if (j1 > 0 || c != '_')
                {
                    int l;
                    if (Character.isUpperCase(c))
                    {
                        int k = i;
                        if (j == 0)
                        {
                            k = i;
                            if (i > 0)
                            {
                                k = i;
                                if (stringbuilder.charAt(i - 1) != '_')
                                {
                                    stringbuilder.append('_');
                                    k = i + 1;
                                }
                            }
                        }
                        c = Character.toLowerCase(c);
                        i = 1;
                        j = k;
                    } else
                    {
                        j = i;
                        i = 0;
                    }
                    stringbuilder.append(c);
                    j++;
                } else
                {
                    int i1 = j;
                    j = i;
                    i = i1;
                }
                j1++;
                l = i;
                i = j;
                j = l;
            }
            if (i > 0)
            {
                return stringbuilder.toString();
            }
        }
        return s;
    }
}
