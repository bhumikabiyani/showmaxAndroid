// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            rh

public final class rr extends Enum
    implements rh
{

    public static final rr a;
    public static final rr b;
    public static final rr c;
    public static final rr d;
    public static final rr e;
    public static final rr f;
    public static final rr g;
    public static final rr h;
    public static final rr i;
    public static final rr j;
    public static final rr k;
    public static final rr l;
    public static final rr m;
    public static final rr n;
    public static final rr o;
    public static final rr p;
    public static final rr q;
    public static final rr r;
    public static final rr s;
    public static final rr t;
    public static final rr u;
    public static final rr v;
    public static final rr w;
    private static final rr y[];
    final boolean x;

    private rr(String s1, int i1, boolean flag)
    {
        super(s1, i1);
        x = flag;
    }

    public static rr valueOf(String s1)
    {
        return (rr)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/rr, s1);
    }

    public static rr[] values()
    {
        return (rr[])y.clone();
    }

    public boolean a()
    {
        return x;
    }

    public int b()
    {
        return 1 << ordinal();
    }

    static 
    {
        a = new rr("USE_ANNOTATIONS", 0, true);
        b = new rr("AUTO_DETECT_GETTERS", 1, true);
        c = new rr("AUTO_DETECT_IS_GETTERS", 2, true);
        d = new rr("AUTO_DETECT_FIELDS", 3, true);
        e = new rr("CAN_OVERRIDE_ACCESS_MODIFIERS", 4, true);
        f = new rr("REQUIRE_SETTERS_FOR_GETTERS", 5, false);
        g = new rr("WRITE_NULL_PROPERTIES", 6, true);
        h = new rr("USE_STATIC_TYPING", 7, false);
        i = new rr("DEFAULT_VIEW_INCLUSION", 8, true);
        j = new rr("WRAP_ROOT_VALUE", 9, false);
        k = new rr("INDENT_OUTPUT", 10, false);
        l = new rr("SORT_PROPERTIES_ALPHABETICALLY", 11, false);
        m = new rr("FAIL_ON_EMPTY_BEANS", 12, true);
        n = new rr("WRAP_EXCEPTIONS", 13, true);
        o = new rr("CLOSE_CLOSEABLE", 14, false);
        p = new rr("FLUSH_AFTER_WRITE_VALUE", 15, true);
        q = new rr("WRITE_DATES_AS_TIMESTAMPS", 16, true);
        r = new rr("WRITE_DATE_KEYS_AS_TIMESTAMPS", 17, false);
        s = new rr("WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS", 18, false);
        t = new rr("WRITE_ENUMS_USING_TO_STRING", 19, false);
        u = new rr("WRITE_ENUMS_USING_INDEX", 20, false);
        v = new rr("WRITE_NULL_MAP_VALUES", 21, true);
        w = new rr("WRITE_EMPTY_JSON_ARRAYS", 22, true);
        y = (new rr[] {
            a, b, c, d, e, f, g, h, i, j, 
            k, l, m, n, o, p, q, r, s, t, 
            u, v, w
        });
    }
}
