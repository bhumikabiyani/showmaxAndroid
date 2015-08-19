// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            rh

public final class ql extends Enum
    implements rh
{

    public static final ql a;
    public static final ql b;
    public static final ql c;
    public static final ql d;
    public static final ql e;
    public static final ql f;
    public static final ql g;
    public static final ql h;
    public static final ql i;
    public static final ql j;
    public static final ql k;
    public static final ql l;
    public static final ql m;
    public static final ql n;
    public static final ql o;
    public static final ql p;
    public static final ql q;
    private static final ql s[];
    final boolean r;

    private ql(String s1, int i1, boolean flag)
    {
        super(s1, i1);
        r = flag;
    }

    public static ql valueOf(String s1)
    {
        return (ql)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/ql, s1);
    }

    public static ql[] values()
    {
        return (ql[])s.clone();
    }

    public boolean a()
    {
        return r;
    }

    public int b()
    {
        return 1 << ordinal();
    }

    static 
    {
        a = new ql("USE_ANNOTATIONS", 0, true);
        b = new ql("AUTO_DETECT_SETTERS", 1, true);
        c = new ql("AUTO_DETECT_CREATORS", 2, true);
        d = new ql("AUTO_DETECT_FIELDS", 3, true);
        e = new ql("USE_GETTERS_AS_SETTERS", 4, true);
        f = new ql("CAN_OVERRIDE_ACCESS_MODIFIERS", 5, true);
        g = new ql("USE_BIG_DECIMAL_FOR_FLOATS", 6, false);
        h = new ql("USE_BIG_INTEGER_FOR_INTS", 7, false);
        i = new ql("USE_JAVA_ARRAY_FOR_JSON_ARRAY", 8, false);
        j = new ql("READ_ENUMS_USING_TO_STRING", 9, false);
        k = new ql("FAIL_ON_UNKNOWN_PROPERTIES", 10, true);
        l = new ql("FAIL_ON_NULL_FOR_PRIMITIVES", 11, false);
        m = new ql("FAIL_ON_NUMBERS_FOR_ENUMS", 12, false);
        n = new ql("WRAP_EXCEPTIONS", 13, true);
        o = new ql("ACCEPT_SINGLE_VALUE_AS_ARRAY", 14, false);
        p = new ql("UNWRAP_ROOT_VALUE", 15, false);
        q = new ql("ACCEPT_EMPTY_STRING_AS_NULL_OBJECT", 16, false);
        s = (new ql[] {
            a, b, c, d, e, f, g, h, i, j, 
            k, l, m, n, o, p, q
        });
    }
}
