// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.text.TextUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.regex.Pattern;
import org.apache.http.client.utils.URIUtils;

public final class cp
{

    private static final Pattern a = Pattern.compile("/");

    public static String a(String s)
    {
        URI uri;
        if (!TextUtils.isEmpty(s))
        {
            if ((uri = c(s)) != null && !(uri = uri.normalize()).isOpaque() && (uri = a(uri.getScheme(), uri.getAuthority(), "/", null, null)) != null)
            {
                return uri.toString();
            }
        }
        return s;
    }

    public static String a(String s, String s1)
    {
        Object obj;
        if (!TextUtils.isEmpty(s) && !TextUtils.isEmpty(s1))
        {
            if ((obj = c(s)) != null)
            {
                obj = ((URI) (obj)).normalize();
                s1 = c(s1);
                if (s1 != null)
                {
                    Object obj1 = s1.normalize();
                    if (!((URI) (obj)).isOpaque() && !((URI) (obj1)).isOpaque())
                    {
                        s1 = ((URI) (obj)).getScheme();
                        String s2 = ((URI) (obj1)).getScheme();
                        if ((s2 != null || s1 == null) && (s2 == null || s2.equals(s1)))
                        {
                            s1 = ((URI) (obj)).getAuthority();
                            String s3 = ((URI) (obj1)).getAuthority();
                            if ((s3 != null || s1 == null) && (s3 == null || s3.equals(s1)))
                            {
label0:
                                {
                                    Object obj2 = ((URI) (obj)).getPath();
                                    s1 = ((URI) (obj1)).getPath();
                                    obj2 = a.split(((CharSequence) (obj2)), -1);
                                    s1 = a.split(s1, -1);
                                    int l = obj2.length;
                                    int i1 = s1.length;
                                    StringBuilder stringbuilder;
                                    String s4;
                                    int i;
                                    boolean flag1;
                                    for (i = 0; i < i1 && i < l && obj2[i].equals(s1[i]); i++)
                                    {
                                        break label0;
                                    }

                                    s1 = ((URI) (obj)).getQuery();
                                    obj = ((URI) (obj)).getFragment();
                                    stringbuilder = new StringBuilder();
                                    if (i == i1 && i == l)
                                    {
                                        s4 = ((URI) (obj1)).getQuery();
                                        obj1 = ((URI) (obj1)).getFragment();
                                        boolean flag = TextUtils.equals(s1, s4);
                                        flag1 = TextUtils.equals(((CharSequence) (obj)), ((CharSequence) (obj1)));
                                        if (flag && flag1)
                                        {
                                            obj = null;
                                            s1 = null;
                                        } else
                                        {
                                            int j;
                                            int k;
                                            if (flag && !TextUtils.isEmpty(((CharSequence) (obj))))
                                            {
                                                obj1 = null;
                                            } else
                                            {
                                                obj1 = s1;
                                            }
                                            if (TextUtils.isEmpty(((CharSequence) (obj1))) && TextUtils.isEmpty(((CharSequence) (obj))))
                                            {
                                                stringbuilder.append(obj2[l - 1]);
                                            } else
                                            {
                                                s1 = ((String) (obj1));
                                            }
                                        }
                                        obj1 = obj;
                                        obj2 = s1;
                                    } else
                                    {
                                        j = i;
                                        do
                                        {
                                            k = i;
                                            if (j >= i1 - 1)
                                            {
                                                break;
                                            }
                                            stringbuilder.append("..");
                                            stringbuilder.append("/");
                                            j++;
                                        } while (true);
                                        for (; k < l - 1; k++)
                                        {
                                            stringbuilder.append(obj2[k]);
                                            stringbuilder.append("/");
                                        }

                                        if (k < l)
                                        {
                                            stringbuilder.append(obj2[k]);
                                        }
                                        obj2 = s1;
                                        obj1 = obj;
                                        if (stringbuilder.length() == 0)
                                        {
                                            stringbuilder.append(".");
                                            stringbuilder.append("/");
                                            obj2 = s1;
                                            obj1 = obj;
                                        }
                                    }
                                    s1 = a(null, null, stringbuilder.toString(), ((String) (obj2)), ((String) (obj1)));
                                    if (s1 != null)
                                    {
                                        return s1.toString();
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return s;
    }

    private static URI a(String s, String s1, String s2, String s3, String s4)
    {
        try
        {
            s = new URI(s, s1, s2, s3, s4);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public static String b(String s)
    {
        URI uri;
        if (!TextUtils.isEmpty(s))
        {
            if ((uri = c(s)) != null && !(uri = uri.normalize()).isOpaque() && (uri = URIUtils.resolve(uri, "./")) != null)
            {
                return uri.toString();
            }
        }
        return s;
    }

    private static URI c(String s)
    {
        try
        {
            s = new URI(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

}
