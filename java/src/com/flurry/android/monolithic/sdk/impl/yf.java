// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect;
import com.flurry.org.codehaus.jackson.annotate.JsonMethod;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ye, xj, xk, xl

public class yf
    implements ye
{

    protected static final yf a = new yf((JsonAutoDetect)com/flurry/android/monolithic/sdk/impl/yf.getAnnotation(com/flurry/org/codehaus/jackson/annotate/JsonAutoDetect));
    protected final com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility b;
    protected final com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility c;
    protected final com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility d;
    protected final com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility e;
    protected final com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility f;

    public yf(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility, com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility1, com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility2, com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility3, com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility4)
    {
        b = visibility;
        c = visibility1;
        d = visibility2;
        e = visibility3;
        f = visibility4;
    }

    public yf(JsonAutoDetect jsonautodetect)
    {
        JsonMethod ajsonmethod[] = jsonautodetect.value();
        com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility;
        if (a(ajsonmethod, JsonMethod.GETTER))
        {
            visibility = jsonautodetect.getterVisibility();
        } else
        {
            visibility = com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE;
        }
        b = visibility;
        if (a(ajsonmethod, JsonMethod.IS_GETTER))
        {
            visibility = jsonautodetect.isGetterVisibility();
        } else
        {
            visibility = com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE;
        }
        c = visibility;
        if (a(ajsonmethod, JsonMethod.SETTER))
        {
            visibility = jsonautodetect.setterVisibility();
        } else
        {
            visibility = com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE;
        }
        d = visibility;
        if (a(ajsonmethod, JsonMethod.CREATOR))
        {
            visibility = jsonautodetect.creatorVisibility();
        } else
        {
            visibility = com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE;
        }
        e = visibility;
        if (a(ajsonmethod, JsonMethod.FIELD))
        {
            jsonautodetect = jsonautodetect.fieldVisibility();
        } else
        {
            jsonautodetect = com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE;
        }
        f = jsonautodetect;
    }

    public static yf a()
    {
        return a;
    }

    private static boolean a(JsonMethod ajsonmethod[], JsonMethod jsonmethod)
    {
        boolean flag1 = false;
        int l = ajsonmethod.length;
        int k = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (k < l)
                {
                    JsonMethod jsonmethod1 = ajsonmethod[k];
                    if (jsonmethod1 != jsonmethod && jsonmethod1 != JsonMethod.ALL)
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            k++;
        } while (true);
    }

    public ye a(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility)
    {
        return f(visibility);
    }

    public ye a(JsonAutoDetect jsonautodetect)
    {
        return b(jsonautodetect);
    }

    public boolean a(xj xj1)
    {
        return a(xj1.e());
    }

    public boolean a(xk xk1)
    {
        return a(xk1.i());
    }

    public boolean a(xl xl1)
    {
        return a(xl1.e());
    }

    public boolean a(Field field)
    {
        return f.isVisible(field);
    }

    public boolean a(Member member)
    {
        return e.isVisible(member);
    }

    public boolean a(Method method)
    {
        return b.isVisible(method);
    }

    public ye b(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility)
    {
        return g(visibility);
    }

    public yf b(JsonAutoDetect jsonautodetect)
    {
        if (jsonautodetect == null)
        {
            return this;
        }
        JsonMethod ajsonmethod[] = jsonautodetect.value();
        Object obj;
        yf yf1;
        if (a(ajsonmethod, JsonMethod.GETTER))
        {
            obj = jsonautodetect.getterVisibility();
        } else
        {
            obj = com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE;
        }
        yf1 = f(((com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility) (obj)));
        if (a(ajsonmethod, JsonMethod.IS_GETTER))
        {
            obj = jsonautodetect.isGetterVisibility();
        } else
        {
            obj = com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE;
        }
        yf1 = yf1.g(((com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility) (obj)));
        if (a(ajsonmethod, JsonMethod.SETTER))
        {
            obj = jsonautodetect.setterVisibility();
        } else
        {
            obj = com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE;
        }
        yf1 = yf1.h(((com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility) (obj)));
        if (a(ajsonmethod, JsonMethod.CREATOR))
        {
            obj = jsonautodetect.creatorVisibility();
        } else
        {
            obj = com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE;
        }
        obj = yf1.i(((com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility) (obj)));
        if (a(ajsonmethod, JsonMethod.FIELD))
        {
            jsonautodetect = jsonautodetect.fieldVisibility();
        } else
        {
            jsonautodetect = com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE;
        }
        return ((yf) (obj)).j(jsonautodetect);
    }

    public boolean b(xl xl1)
    {
        return b(xl1.e());
    }

    public boolean b(Method method)
    {
        return c.isVisible(method);
    }

    public ye c(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility)
    {
        return h(visibility);
    }

    public boolean c(xl xl1)
    {
        return c(xl1.e());
    }

    public boolean c(Method method)
    {
        return d.isVisible(method);
    }

    public ye d(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility)
    {
        return i(visibility);
    }

    public ye e(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility)
    {
        return j(visibility);
    }

    public yf f(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility)
    {
        if (visibility == com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.DEFAULT)
        {
            visibility = a.b;
        }
        if (b == visibility)
        {
            return this;
        } else
        {
            return new yf(visibility, c, d, e, f);
        }
    }

    public yf g(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility)
    {
        if (visibility == com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.DEFAULT)
        {
            visibility = a.c;
        }
        if (c == visibility)
        {
            return this;
        } else
        {
            return new yf(b, visibility, d, e, f);
        }
    }

    public yf h(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility)
    {
        if (visibility == com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.DEFAULT)
        {
            visibility = a.d;
        }
        if (d == visibility)
        {
            return this;
        } else
        {
            return new yf(b, c, visibility, e, f);
        }
    }

    public yf i(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility)
    {
        if (visibility == com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.DEFAULT)
        {
            visibility = a.e;
        }
        if (e == visibility)
        {
            return this;
        } else
        {
            return new yf(b, c, d, visibility, f);
        }
    }

    public yf j(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility visibility)
    {
        if (visibility == com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.DEFAULT)
        {
            visibility = a.f;
        }
        if (f == visibility)
        {
            return this;
        } else
        {
            return new yf(b, c, d, e, visibility);
        }
    }

    public String toString()
    {
        return (new StringBuilder("[Visibility:")).append(" getter: ").append(b).append(", isGetter: ").append(c).append(", setter: ").append(d).append(", creator: ").append(e).append(", field: ").append(f).append("]").toString();
    }

}
