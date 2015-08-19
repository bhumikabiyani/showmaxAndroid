// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.content.Intent;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.FitnessActivities;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzp, zza

public class Session
    implements SafeParcelable
{
    public static class Builder
    {

        private String mName;
        private long zzON;
        private int zzYC;
        private zza zzYP;
        private long zzYq;
        private String zzZN;
        private String zzZO;

        static long zza(Builder builder)
        {
            return builder.zzON;
        }

        static long zzb(Builder builder)
        {
            return builder.zzYq;
        }

        static String zzc(Builder builder)
        {
            return builder.mName;
        }

        static String zzd(Builder builder)
        {
            return builder.zzZN;
        }

        static String zze(Builder builder)
        {
            return builder.zzZO;
        }

        static int zzf(Builder builder)
        {
            return builder.zzYC;
        }

        static zza zzg(Builder builder)
        {
            return builder.zzYP;
        }

        public Session build()
        {
label0:
            {
                boolean flag1 = false;
                StringBuilder stringbuilder;
                boolean flag;
                if (zzON > 0L)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                zzx.zza(flag, "Start time should be specified.");
                if (zzYq != 0L)
                {
                    flag = flag1;
                    if (zzYq <= zzON)
                    {
                        break label0;
                    }
                }
                flag = true;
            }
            zzx.zza(flag, "End time should be later than start time.");
            if (zzZN == null)
            {
                stringbuilder = new StringBuilder();
                String s;
                if (mName == null)
                {
                    s = "";
                } else
                {
                    s = mName;
                }
                zzZN = stringbuilder.append(s).append(zzON).toString();
            }
            return new Session(this);
        }

        public Builder setActivity(String s)
        {
            return zzds(FitnessActivities.zzbG(s));
        }

        public Builder setDescription(String s)
        {
            boolean flag;
            if (s.length() <= 1000)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Session description cannot exceed %d characters", new Object[] {
                Integer.valueOf(1000)
            });
            zzZO = s;
            return this;
        }

        public Builder setEndTime(long l, TimeUnit timeunit)
        {
            boolean flag;
            if (l >= 0L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "End time should be positive.");
            zzYq = timeunit.toMillis(l);
            return this;
        }

        public Builder setIdentifier(String s)
        {
            boolean flag;
            if (s != null && TextUtils.getTrimmedLength(s) > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzO(flag);
            zzZN = s;
            return this;
        }

        public Builder setName(String s)
        {
            boolean flag;
            if (s.length() <= 100)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zzb(flag, "Session name cannot exceed %d characters", new Object[] {
                Integer.valueOf(100)
            });
            mName = s;
            return this;
        }

        public Builder setStartTime(long l, TimeUnit timeunit)
        {
            boolean flag;
            if (l > 0L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Start time should be positive.");
            zzON = timeunit.toMillis(l);
            return this;
        }

        public Builder zzbL(String s)
        {
            zzYP = com.google.android.gms.fitness.data.zza.zzbI(s);
            return this;
        }

        public Builder zzds(int i)
        {
            zzYC = i;
            return this;
        }

        public Builder()
        {
            zzON = 0L;
            zzYq = 0L;
            mName = null;
            zzYC = 4;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new zzp();
    public static final String EXTRA_SESSION = "vnd.google.fitness.session";
    public static final String MIME_TYPE_PREFIX = "vnd.google.fitness.session/";
    private final String mName;
    private final int zzFG;
    private final long zzON;
    private final int zzYC;
    private final zza zzYP;
    private final long zzYq;
    private final String zzZN;
    private final String zzZO;

    Session(int i, long l, long l1, String s, String s1, 
            String s2, int j, zza zza1)
    {
        zzFG = i;
        zzON = l;
        zzYq = l1;
        mName = s;
        zzZN = s1;
        zzZO = s2;
        zzYC = j;
        zzYP = zza1;
    }

    private Session(Builder builder)
    {
        zzFG = 2;
        zzON = Builder.zza(builder);
        zzYq = Builder.zzb(builder);
        mName = com.google.android.gms.fitness.data.Builder.zzc(builder);
        zzZN = Builder.zzd(builder);
        zzZO = Builder.zze(builder);
        zzYC = Builder.zzf(builder);
        zzYP = Builder.zzg(builder);
    }


    public static Session extract(Intent intent)
    {
        if (intent == null)
        {
            return null;
        } else
        {
            return (Session)zzc.zza(intent, "vnd.google.fitness.session", CREATOR);
        }
    }

    public static String getMimeType(String s)
    {
        return (new StringBuilder()).append("vnd.google.fitness.session/").append(s).toString();
    }

    private boolean zza(Session session)
    {
        return zzON == session.zzON && zzYq == session.zzYq && zzw.equal(mName, session.mName) && zzw.equal(zzZN, session.zzZN) && zzw.equal(zzZO, session.zzZO) && zzw.equal(zzYP, session.zzYP) && zzYC == session.zzYC;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof Session) && zza((Session)obj);
    }

    public String getActivity()
    {
        return FitnessActivities.getName(zzYC);
    }

    public String getAppPackageName()
    {
        if (zzYP == null)
        {
            return null;
        } else
        {
            return zzYP.getPackageName();
        }
    }

    public String getDescription()
    {
        return zzZO;
    }

    public long getEndTime(TimeUnit timeunit)
    {
        return timeunit.convert(zzYq, TimeUnit.MILLISECONDS);
    }

    public String getIdentifier()
    {
        return zzZN;
    }

    public String getName()
    {
        return mName;
    }

    public long getStartTime(TimeUnit timeunit)
    {
        return timeunit.convert(zzON, TimeUnit.MILLISECONDS);
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            Long.valueOf(zzON), Long.valueOf(zzYq), zzZN
        });
    }

    public boolean isOngoing()
    {
        return zzYq == 0L;
    }

    public String toString()
    {
        return zzw.zzk(this).zza("startTime", Long.valueOf(zzON)).zza("endTime", Long.valueOf(zzYq)).zza("name", mName).zza("identifier", zzZN).zza("description", zzZO).zza("activity", Integer.valueOf(zzYC)).zza("application", zzYP).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzp.zza(this, parcel, i);
    }

    public int zzln()
    {
        return zzYC;
    }

    public long zzlp()
    {
        return zzON;
    }

    public long zzlq()
    {
        return zzYq;
    }

    public zza zzlz()
    {
        return zzYP;
    }

}
