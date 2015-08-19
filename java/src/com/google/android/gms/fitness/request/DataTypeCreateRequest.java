// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.Field;
import com.google.android.gms.internal.zzni;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzk

public class DataTypeCreateRequest
    implements SafeParcelable
{
    public static class Builder
    {

        private String mName;
        private List zzZd;

        static String zza(Builder builder)
        {
            return builder.mName;
        }

        static List zzb(Builder builder)
        {
            return builder.zzZd;
        }

        public Builder addField(Field field)
        {
            if (!zzZd.contains(field))
            {
                zzZd.add(field);
            }
            return this;
        }

        public Builder addField(String s, int i)
        {
            boolean flag;
            if (s != null && !s.isEmpty())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Invalid name specified");
            return addField(Field.zzn(s, i));
        }

        public DataTypeCreateRequest build()
        {
            boolean flag1 = true;
            boolean flag;
            if (mName != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Must set the name");
            if (!zzZd.isEmpty())
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Must specify the data fields");
            return new DataTypeCreateRequest(this);
        }

        public Builder setName(String s)
        {
            mName = s;
            return this;
        }

        public Builder()
        {
            zzZd = new ArrayList();
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new zzk();
    private final String mName;
    private final int zzFG;
    private final String zzFO;
    private final List zzZd;
    private final zzni zzabi;

    DataTypeCreateRequest(int i, String s, List list, IBinder ibinder, String s1)
    {
        zzFG = i;
        mName = s;
        zzZd = Collections.unmodifiableList(list);
        if (ibinder == null)
        {
            s = null;
        } else
        {
            s = com.google.android.gms.internal.zzni.zza.zzaF(ibinder);
        }
        zzabi = s;
        zzFO = s1;
    }

    private DataTypeCreateRequest(Builder builder)
    {
        this(Builder.zza(builder), Builder.zzb(builder), null, null);
    }


    public DataTypeCreateRequest(DataTypeCreateRequest datatypecreaterequest, zzni zzni1, String s)
    {
        this(datatypecreaterequest.mName, datatypecreaterequest.zzZd, zzni1, s);
    }

    public DataTypeCreateRequest(String s, List list, zzni zzni1, String s1)
    {
        zzFG = 2;
        mName = s;
        zzZd = Collections.unmodifiableList(list);
        zzabi = zzni1;
        zzFO = s1;
    }

    private boolean zzb(DataTypeCreateRequest datatypecreaterequest)
    {
        return zzw.equal(mName, datatypecreaterequest.mName) && zzw.equal(zzZd, datatypecreaterequest.zzZd);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof DataTypeCreateRequest) && zzb((DataTypeCreateRequest)obj);
    }

    public List getFields()
    {
        return zzZd;
    }

    public String getName()
    {
        return mName;
    }

    public String getPackageName()
    {
        return zzFO;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            mName, zzZd
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("name", mName).zza("fields", zzZd).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzk.zza(this, parcel, i);
    }

    public IBinder zzlQ()
    {
        if (zzabi == null)
        {
            return null;
        } else
        {
            return zzabi.asBinder();
        }
    }

}
