// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xc, wy, ue, vs, 
//            vt, wb, vu, vx, 
//            vy, vw, vv, vz, 
//            vq, vr, ud, uh, 
//            wc, xa, um, wd, 
//            tz, xb, uw, vo, 
//            adb

class tg
{

    final HashMap a = new HashMap();

    private tg()
    {
        a(new xc());
        wy wy1 = new wy();
        a(wy1, java/lang/String);
        a(wy1, java/lang/CharSequence);
        a(new ue());
        a(new vs(java/lang/Boolean, null));
        a(new vt(java/lang/Byte, null));
        a(new wb(java/lang/Short, null));
        a(new vu(java/lang/Character, null));
        a(new vx(java/lang/Integer, null));
        a(new vy(java/lang/Long, null));
        a(new vw(java/lang/Float, null));
        a(new vv(java/lang/Double, null));
        a(new vs(Boolean.TYPE, Boolean.FALSE));
        a(new vt(Byte.TYPE, Byte.valueOf((byte)0)));
        a(new wb(Short.TYPE, Short.valueOf((short)0)));
        a(new vu(Character.TYPE, Character.valueOf('\0')));
        a(new vx(Integer.TYPE, Integer.valueOf(0)));
        a(new vy(Long.TYPE, Long.valueOf(0L)));
        a(new vw(Float.TYPE, Float.valueOf(0.0F)));
        a(new vv(Double.TYPE, Double.valueOf(0.0D)));
        a(new vz());
        a(new vq());
        a(new vr());
        a(new ud());
        a(new uh());
        a(new ud(java/util/GregorianCalendar), java/util/GregorianCalendar);
        a(new wc());
        a(new xa());
        for (Iterator iterator = um.d().iterator(); iterator.hasNext(); a((um)iterator.next())) { }
        a(new wd());
        a(new tz());
        a(new xb());
        a(new uw());
    }

    public static HashMap a()
    {
        return (new tg()).a;
    }

    private void a(vo vo1)
    {
        a(vo1, vo1.f());
    }

    private void a(vo vo1, Class class1)
    {
        a.put(new adb(class1), vo1);
    }
}
