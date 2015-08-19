// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.org.codehaus.jackson.annotate.JacksonAnnotation;
import com.flurry.org.codehaus.jackson.annotate.JsonAnyGetter;
import com.flurry.org.codehaus.jackson.annotate.JsonAnySetter;
import com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect;
import com.flurry.org.codehaus.jackson.annotate.JsonBackReference;
import com.flurry.org.codehaus.jackson.annotate.JsonCreator;
import com.flurry.org.codehaus.jackson.annotate.JsonGetter;
import com.flurry.org.codehaus.jackson.annotate.JsonIgnore;
import com.flurry.org.codehaus.jackson.annotate.JsonIgnoreProperties;
import com.flurry.org.codehaus.jackson.annotate.JsonIgnoreType;
import com.flurry.org.codehaus.jackson.annotate.JsonManagedReference;
import com.flurry.org.codehaus.jackson.annotate.JsonProperty;
import com.flurry.org.codehaus.jackson.annotate.JsonPropertyOrder;
import com.flurry.org.codehaus.jackson.annotate.JsonRawValue;
import com.flurry.org.codehaus.jackson.annotate.JsonSetter;
import com.flurry.org.codehaus.jackson.annotate.JsonSubTypes;
import com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo;
import com.flurry.org.codehaus.jackson.annotate.JsonTypeName;
import com.flurry.org.codehaus.jackson.annotate.JsonUnwrapped;
import com.flurry.org.codehaus.jackson.annotate.JsonValue;
import com.flurry.org.codehaus.jackson.annotate.JsonWriteNullProperties;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            py, xk, pz, se, 
//            xg, sf, xh, ye, 
//            si, rf, sh, yi, 
//            yj, afm, sa, sl, 
//            sb, xn, yg, yw, 
//            rb, abp, sd, xj, 
//            sk, xl, ry, sc, 
//            rd, qv, sj, xi, 
//            sg

public class xx extends py
{

    public xx()
    {
    }

    public pz a(xk xk1)
    {
        JsonManagedReference jsonmanagedreference = (JsonManagedReference)xk1.a(com/flurry/org/codehaus/jackson/annotate/JsonManagedReference);
        if (jsonmanagedreference != null)
        {
            return pz.a(jsonmanagedreference.value());
        }
        xk1 = (JsonBackReference)xk1.a(com/flurry/org/codehaus/jackson/annotate/JsonBackReference);
        if (xk1 != null)
        {
            return pz.b(xk1.value());
        } else
        {
            return null;
        }
    }

    public sf a(xg xg1, sf sf1)
    {
        se se1 = (se)xg1.a(com/flurry/android/monolithic/sdk/impl/se);
        if (se1 != null)
        {
            return se1.h();
        }
        xg1 = (JsonWriteNullProperties)xg1.a(com/flurry/org/codehaus/jackson/annotate/JsonWriteNullProperties);
        if (xg1 != null)
        {
            if (xg1.value())
            {
                return sf.a;
            } else
            {
                return sf.b;
            }
        } else
        {
            return sf1;
        }
    }

    public ye a(xh xh1, ye ye1)
    {
        xh1 = (JsonAutoDetect)xh1.a(com/flurry/org/codehaus/jackson/annotate/JsonAutoDetect);
        if (xh1 == null)
        {
            return ye1;
        } else
        {
            return ye1.a(xh1);
        }
    }

    protected yj a(rf rf1, xg xg1, afm afm1)
    {
        Object obj1 = null;
        JsonTypeInfo jsontypeinfo = (JsonTypeInfo)xg1.a(com/flurry/org/codehaus/jackson/annotate/JsonTypeInfo);
        Object obj = (si)xg1.a(com/flurry/android/monolithic/sdk/impl/si);
        sh sh1;
        if (obj != null)
        {
            if (jsontypeinfo == null)
            {
                return null;
            }
            obj = rf1.d(xg1, ((si) (obj)).a());
        } else
        {
            if (jsontypeinfo == null)
            {
                return null;
            }
            if (jsontypeinfo.use() == com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.Id.NONE)
            {
                return c();
            }
            obj = b();
        }
        sh1 = (sh)xg1.a(com/flurry/android/monolithic/sdk/impl/sh);
        if (sh1 == null)
        {
            rf1 = obj1;
        } else
        {
            rf1 = rf1.e(xg1, sh1.a());
        }
        if (rf1 != null)
        {
            rf1.a(afm1);
        }
        obj = ((yj) (obj)).a(jsontypeinfo.use(), rf1);
        afm1 = jsontypeinfo.include();
        rf1 = afm1;
        if (afm1 == com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As.EXTERNAL_PROPERTY)
        {
            rf1 = afm1;
            if (xg1 instanceof xh)
            {
                rf1 = com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As.PROPERTY;
            }
        }
        rf1 = ((yj) (obj)).a(rf1).a(jsontypeinfo.property());
        xg1 = jsontypeinfo.defaultImpl();
        if (xg1 != com/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$None)
        {
            return rf1.a(xg1);
        } else
        {
            return rf1;
        }
    }

    public yj a(rf rf1, xh xh1, afm afm1)
    {
        return a(rf1, ((xg) (xh1)), afm1);
    }

    public yj a(rf rf1, xk xk1, afm afm1)
    {
        if (afm1.f())
        {
            return null;
        } else
        {
            return a(rf1, ((xg) (xk1)), afm1);
        }
    }

    public Boolean a(xh xh1)
    {
        xh1 = (sa)xh1.a(com/flurry/android/monolithic/sdk/impl/sa);
        if (xh1 == null)
        {
            return null;
        }
        if (xh1.a())
        {
            return Boolean.TRUE;
        } else
        {
            return Boolean.FALSE;
        }
    }

    public Class a(xg xg1, afm afm1)
    {
        xg1 = (se)xg1.a(com/flurry/android/monolithic/sdk/impl/se);
        if (xg1 != null)
        {
            xg1 = xg1.e();
            if (xg1 != com/flurry/android/monolithic/sdk/impl/sl)
            {
                return xg1;
            }
        }
        return null;
    }

    public Class a(xg xg1, afm afm1, String s)
    {
        xg1 = (sb)xg1.a(com/flurry/android/monolithic/sdk/impl/sb);
        if (xg1 != null)
        {
            xg1 = xg1.d();
            if (xg1 != com/flurry/android/monolithic/sdk/impl/sl)
            {
                return xg1;
            }
        }
        return null;
    }

    public String a(xn xn1)
    {
        if (xn1 != null)
        {
            xn1 = (JsonProperty)xn1.a(com/flurry/org/codehaus/jackson/annotate/JsonProperty);
            if (xn1 != null)
            {
                return xn1.value();
            }
        }
        return null;
    }

    public String a(Enum enum)
    {
        return enum.name();
    }

    public List a(xg xg1)
    {
        xg1 = (JsonSubTypes)xg1.a(com/flurry/org/codehaus/jackson/annotate/JsonSubTypes);
        if (xg1 != null) goto _L2; else goto _L1
_L1:
        xg1 = null;
_L4:
        return xg1;
_L2:
        com.flurry.org.codehaus.jackson.annotate.JsonSubTypes.Type atype[] = xg1.value();
        ArrayList arraylist = new ArrayList(atype.length);
        int j1 = atype.length;
        int i1 = 0;
        do
        {
            xg1 = arraylist;
            if (i1 >= j1)
            {
                continue;
            }
            xg1 = atype[i1];
            arraylist.add(new yg(xg1.value(), xg1.name()));
            i1++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean a(xi xi)
    {
        return m(xi);
    }

    public boolean a(xj xj1)
    {
        return m(xj1);
    }

    public boolean a(xl xl1)
    {
        return m(xl1);
    }

    public boolean a(Annotation annotation)
    {
        return annotation.annotationType().getAnnotation(com/flurry/org/codehaus/jackson/annotate/JacksonAnnotation) != null;
    }

    public yj b(rf rf1, xk xk1, afm afm1)
    {
        if (!afm1.f())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Must call method with a container type (got ").append(afm1).append(")").toString());
        } else
        {
            return a(rf1, xk1, afm1);
        }
    }

    protected yw b()
    {
        return new yw();
    }

    public Boolean b(xk xk1)
    {
        xk1 = (JsonUnwrapped)xk1.a(com/flurry/org/codehaus/jackson/annotate/JsonUnwrapped);
        if (xk1 != null && xk1.enabled())
        {
            return Boolean.TRUE;
        } else
        {
            return null;
        }
    }

    public Class b(xg xg1, afm afm1)
    {
        xg1 = (se)xg1.a(com/flurry/android/monolithic/sdk/impl/se);
        if (xg1 != null)
        {
            xg1 = xg1.f();
            if (xg1 != com/flurry/android/monolithic/sdk/impl/sl)
            {
                return xg1;
            }
        }
        return null;
    }

    public Class b(xg xg1, afm afm1, String s)
    {
        xg1 = (sb)xg1.a(com/flurry/android/monolithic/sdk/impl/sb);
        if (xg1 != null)
        {
            xg1 = xg1.e();
            if (xg1 != com/flurry/android/monolithic/sdk/impl/sl)
            {
                return xg1;
            }
        }
        return null;
    }

    public Object b(xg xg1)
    {
        Object obj = (se)xg1.a(com/flurry/android/monolithic/sdk/impl/se);
        if (obj != null)
        {
            obj = ((se) (obj)).a();
            if (obj != com/flurry/android/monolithic/sdk/impl/rb)
            {
                return obj;
            }
        }
        obj = (JsonRawValue)xg1.a(com/flurry/org/codehaus/jackson/annotate/JsonRawValue);
        if (obj != null && ((JsonRawValue) (obj)).value())
        {
            return new abp(xg1.d());
        } else
        {
            return null;
        }
    }

    public String b(xh xh1)
    {
        xh1 = (sd)xh1.a(com/flurry/android/monolithic/sdk/impl/sd);
        if (xh1 == null)
        {
            return null;
        } else
        {
            return xh1.a();
        }
    }

    public String b(xj xj1)
    {
        JsonProperty jsonproperty = (JsonProperty)xj1.a(com/flurry/org/codehaus/jackson/annotate/JsonProperty);
        if (jsonproperty != null)
        {
            return jsonproperty.value();
        }
        if (xj1.b(com/flurry/android/monolithic/sdk/impl/se) || xj1.b(com/flurry/android/monolithic/sdk/impl/sk))
        {
            return "";
        } else
        {
            return null;
        }
    }

    public String b(xl xl1)
    {
        Object obj = (JsonProperty)xl1.a(com/flurry/org/codehaus/jackson/annotate/JsonProperty);
        if (obj != null)
        {
            return ((JsonProperty) (obj)).value();
        }
        obj = (JsonGetter)xl1.a(com/flurry/org/codehaus/jackson/annotate/JsonGetter);
        if (obj != null)
        {
            return ((JsonGetter) (obj)).value();
        }
        if (xl1.b(com/flurry/android/monolithic/sdk/impl/se) || xl1.b(com/flurry/android/monolithic/sdk/impl/sk))
        {
            return "";
        } else
        {
            return null;
        }
    }

    protected yw c()
    {
        return yw.b();
    }

    public Class c(xg xg1)
    {
        xg1 = (se)xg1.a(com/flurry/android/monolithic/sdk/impl/se);
        if (xg1 != null)
        {
            xg1 = xg1.c();
            if (xg1 != com/flurry/android/monolithic/sdk/impl/rb)
            {
                return xg1;
            }
        }
        return null;
    }

    public Class c(xg xg1, afm afm1, String s)
    {
        xg1 = (sb)xg1.a(com/flurry/android/monolithic/sdk/impl/sb);
        if (xg1 != null)
        {
            xg1 = xg1.f();
            if (xg1 != com/flurry/android/monolithic/sdk/impl/sl)
            {
                return xg1;
            }
        }
        return null;
    }

    public String c(xj xj1)
    {
        JsonProperty jsonproperty = (JsonProperty)xj1.a(com/flurry/org/codehaus/jackson/annotate/JsonProperty);
        if (jsonproperty != null)
        {
            return jsonproperty.value();
        }
        if (xj1.b(com/flurry/android/monolithic/sdk/impl/sb) || xj1.b(com/flurry/android/monolithic/sdk/impl/sk) || xj1.b(com/flurry/org/codehaus/jackson/annotate/JsonBackReference) || xj1.b(com/flurry/org/codehaus/jackson/annotate/JsonManagedReference))
        {
            return "";
        } else
        {
            return null;
        }
    }

    public boolean c(xk xk1)
    {
        return m(xk1);
    }

    public boolean c(xl xl1)
    {
        xl1 = (JsonValue)xl1.a(com/flurry/org/codehaus/jackson/annotate/JsonValue);
        return xl1 != null && xl1.value();
    }

    public String[] c(xh xh1)
    {
        xh1 = (JsonIgnoreProperties)xh1.a(com/flurry/org/codehaus/jackson/annotate/JsonIgnoreProperties);
        if (xh1 == null)
        {
            return null;
        } else
        {
            return xh1.value();
        }
    }

    public Boolean d(xh xh1)
    {
        xh1 = (JsonIgnoreProperties)xh1.a(com/flurry/org/codehaus/jackson/annotate/JsonIgnoreProperties);
        if (xh1 == null)
        {
            return null;
        } else
        {
            return Boolean.valueOf(xh1.ignoreUnknown());
        }
    }

    public Class d(xg xg1)
    {
        xg1 = (se)xg1.a(com/flurry/android/monolithic/sdk/impl/se);
        if (xg1 != null)
        {
            xg1 = xg1.b();
            if (xg1 != com/flurry/android/monolithic/sdk/impl/rb)
            {
                return xg1;
            }
        }
        return null;
    }

    public Object d(xk xk1)
    {
        Object obj = (ry)xk1.a(com/flurry/android/monolithic/sdk/impl/ry);
        if (obj == null)
        {
            obj = null;
        } else
        {
            String s = ((ry) (obj)).a();
            obj = s;
            if (s.length() == 0)
            {
                if (!(xk1 instanceof xl))
                {
                    return xk1.d().getName();
                }
                xl xl1 = (xl)xk1;
                if (xl1.f() == 0)
                {
                    return xk1.d().getName();
                } else
                {
                    return xl1.a(0).getName();
                }
            }
        }
        return obj;
    }

    public String d(xl xl1)
    {
        Object obj = (JsonProperty)xl1.a(com/flurry/org/codehaus/jackson/annotate/JsonProperty);
        if (obj != null)
        {
            return ((JsonProperty) (obj)).value();
        }
        obj = (JsonSetter)xl1.a(com/flurry/org/codehaus/jackson/annotate/JsonSetter);
        if (obj != null)
        {
            return ((JsonSetter) (obj)).value();
        }
        if (xl1.b(com/flurry/android/monolithic/sdk/impl/sb) || xl1.b(com/flurry/android/monolithic/sdk/impl/sk) || xl1.b(com/flurry/org/codehaus/jackson/annotate/JsonBackReference) || xl1.b(com/flurry/org/codehaus/jackson/annotate/JsonManagedReference))
        {
            return "";
        } else
        {
            return null;
        }
    }

    public Boolean e(xh xh1)
    {
        xh1 = (JsonIgnoreType)xh1.a(com/flurry/org/codehaus/jackson/annotate/JsonIgnoreType);
        if (xh1 == null)
        {
            return null;
        } else
        {
            return Boolean.valueOf(xh1.value());
        }
    }

    public Class e(xg xg1)
    {
        xg1 = (se)xg1.a(com/flurry/android/monolithic/sdk/impl/se);
        if (xg1 != null)
        {
            xg1 = xg1.d();
            if (xg1 != com/flurry/android/monolithic/sdk/impl/sl)
            {
                return xg1;
            }
        }
        return null;
    }

    public boolean e(xl xl1)
    {
        return xl1.b(com/flurry/org/codehaus/jackson/annotate/JsonAnySetter);
    }

    public sg f(xg xg1)
    {
        xg1 = (se)xg1.a(com/flurry/android/monolithic/sdk/impl/se);
        if (xg1 == null)
        {
            return null;
        } else
        {
            return xg1.g();
        }
    }

    public Object f(xh xh1)
    {
        xh1 = (sc)xh1.a(com/flurry/android/monolithic/sdk/impl/sc);
        if (xh1 != null)
        {
            xh1 = xh1.a();
            if (xh1.length() > 0)
            {
                return xh1;
            }
        }
        return null;
    }

    public boolean f(xl xl1)
    {
        return xl1.b(com/flurry/org/codehaus/jackson/annotate/JsonAnyGetter);
    }

    public String g(xh xh1)
    {
        xh1 = (JsonTypeName)xh1.a(com/flurry/org/codehaus/jackson/annotate/JsonTypeName);
        if (xh1 == null)
        {
            return null;
        } else
        {
            return xh1.value();
        }
    }

    public Class[] g(xg xg1)
    {
        xg1 = (sk)xg1.a(com/flurry/android/monolithic/sdk/impl/sk);
        if (xg1 == null)
        {
            return null;
        } else
        {
            return xg1.a();
        }
    }

    public Object h(xg xg1)
    {
        return l(xg1);
    }

    public String[] h(xh xh1)
    {
        xh1 = (JsonPropertyOrder)xh1.a(com/flurry/org/codehaus/jackson/annotate/JsonPropertyOrder);
        if (xh1 == null)
        {
            return null;
        } else
        {
            return xh1.value();
        }
    }

    public Boolean i(xh xh1)
    {
        xh1 = (JsonPropertyOrder)xh1.a(com/flurry/org/codehaus/jackson/annotate/JsonPropertyOrder);
        if (xh1 == null)
        {
            return null;
        } else
        {
            return Boolean.valueOf(xh1.alphabetic());
        }
    }

    public Class i(xg xg1)
    {
        xg1 = (sb)xg1.a(com/flurry/android/monolithic/sdk/impl/sb);
        if (xg1 != null)
        {
            xg1 = xg1.c();
            if (xg1 != com/flurry/android/monolithic/sdk/impl/rd)
            {
                return xg1;
            }
        }
        return null;
    }

    public Class j(xg xg1)
    {
        xg1 = (sb)xg1.a(com/flurry/android/monolithic/sdk/impl/sb);
        if (xg1 != null)
        {
            xg1 = xg1.b();
            if (xg1 != com/flurry/android/monolithic/sdk/impl/qv)
            {
                return xg1;
            }
        }
        return null;
    }

    public Object j(xh xh1)
    {
        xh1 = (sj)xh1.a(com/flurry/android/monolithic/sdk/impl/sj);
        if (xh1 == null)
        {
            return null;
        } else
        {
            return xh1.a();
        }
    }

    public boolean k(xg xg1)
    {
        return xg1.b(com/flurry/org/codehaus/jackson/annotate/JsonCreator);
    }

    public Class l(xg xg1)
    {
        xg1 = (sb)xg1.a(com/flurry/android/monolithic/sdk/impl/sb);
        if (xg1 != null)
        {
            xg1 = xg1.a();
            if (xg1 != com/flurry/android/monolithic/sdk/impl/qv)
            {
                return xg1;
            }
        }
        return null;
    }

    protected boolean m(xg xg1)
    {
        xg1 = (JsonIgnore)xg1.a(com/flurry/org/codehaus/jackson/annotate/JsonIgnore);
        return xg1 != null && xg1.value();
    }
}
