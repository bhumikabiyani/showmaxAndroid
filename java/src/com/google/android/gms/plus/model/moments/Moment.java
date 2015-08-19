// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.model.moments;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.internal.zztr;
import com.google.android.gms.internal.zztt;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.plus.model.moments:
//            ItemScope

public interface Moment
    extends Freezable
{
    public static class Builder
    {

        private String zzFA;
        private final Set zzauX = new HashSet();
        private String zzavK;
        private zztr zzavS;
        private zztr zzavT;
        private String zzxV;

        public Moment build()
        {
            return new zztt(zzauX, zzFA, zzavS, zzavK, zzavT, zzxV);
        }

        public Builder setId(String s)
        {
            zzFA = s;
            zzauX.add(Integer.valueOf(2));
            return this;
        }

        public Builder setResult(ItemScope itemscope)
        {
            zzavS = (zztr)itemscope;
            zzauX.add(Integer.valueOf(4));
            return this;
        }

        public Builder setStartDate(String s)
        {
            zzavK = s;
            zzauX.add(Integer.valueOf(5));
            return this;
        }

        public Builder setTarget(ItemScope itemscope)
        {
            zzavT = (zztr)itemscope;
            zzauX.add(Integer.valueOf(6));
            return this;
        }

        public Builder setType(String s)
        {
            zzxV = s;
            zzauX.add(Integer.valueOf(7));
            return this;
        }

        public Builder()
        {
        }
    }


    public abstract String getId();

    public abstract ItemScope getResult();

    public abstract String getStartDate();

    public abstract ItemScope getTarget();

    public abstract String getType();

    public abstract boolean hasId();

    public abstract boolean hasResult();

    public abstract boolean hasStartDate();

    public abstract boolean hasTarget();

    public abstract boolean hasType();
}
