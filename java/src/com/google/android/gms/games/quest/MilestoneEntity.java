// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.quest;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

// Referenced classes of package com.google.android.gms.games.quest:
//            Milestone, MilestoneEntityCreator

public final class MilestoneEntity
    implements SafeParcelable, Milestone
{

    public static final MilestoneEntityCreator CREATOR = new MilestoneEntityCreator();
    private final int mState;
    private final int zzFG;
    private final String zzadJ;
    private final String zzaeR;
    private final long zzakk;
    private final long zzakl;
    private final byte zzakm[];

    MilestoneEntity(int i, String s, long l, long l1, byte abyte0[], 
            int j, String s1)
    {
        zzFG = i;
        zzaeR = s;
        zzakk = l;
        zzakl = l1;
        zzakm = abyte0;
        mState = j;
        zzadJ = s1;
    }

    public MilestoneEntity(Milestone milestone)
    {
        zzFG = 4;
        zzaeR = milestone.getMilestoneId();
        zzakk = milestone.getCurrentProgress();
        zzakl = milestone.getTargetProgress();
        mState = milestone.getState();
        zzadJ = milestone.getEventId();
        milestone = milestone.getCompletionRewardData();
        if (milestone == null)
        {
            zzakm = null;
            return;
        } else
        {
            zzakm = new byte[milestone.length];
            System.arraycopy(milestone, 0, zzakm, 0, milestone.length);
            return;
        }
    }

    static int zza(Milestone milestone)
    {
        return zzw.hashCode(new Object[] {
            milestone.getMilestoneId(), Long.valueOf(milestone.getCurrentProgress()), Long.valueOf(milestone.getTargetProgress()), Integer.valueOf(milestone.getState()), milestone.getEventId()
        });
    }

    static boolean zza(Milestone milestone, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof Milestone) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (milestone == obj) goto _L4; else goto _L3
_L3:
        obj = (Milestone)obj;
        if (!zzw.equal(((Milestone) (obj)).getMilestoneId(), milestone.getMilestoneId()) || !zzw.equal(Long.valueOf(((Milestone) (obj)).getCurrentProgress()), Long.valueOf(milestone.getCurrentProgress())) || !zzw.equal(Long.valueOf(((Milestone) (obj)).getTargetProgress()), Long.valueOf(milestone.getTargetProgress())) || !zzw.equal(Integer.valueOf(((Milestone) (obj)).getState()), Integer.valueOf(milestone.getState())))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(((Milestone) (obj)).getEventId(), milestone.getEventId())) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(Milestone milestone)
    {
        return zzw.zzk(milestone).zza("MilestoneId", milestone.getMilestoneId()).zza("CurrentProgress", Long.valueOf(milestone.getCurrentProgress())).zza("TargetProgress", Long.valueOf(milestone.getTargetProgress())).zza("State", Integer.valueOf(milestone.getState())).zza("CompletionRewardData", milestone.getCompletionRewardData()).zza("EventId", milestone.getEventId()).toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return zza(this, obj);
    }

    public Milestone freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public byte[] getCompletionRewardData()
    {
        return zzakm;
    }

    public long getCurrentProgress()
    {
        return zzakk;
    }

    public String getEventId()
    {
        return zzadJ;
    }

    public String getMilestoneId()
    {
        return zzaeR;
    }

    public int getState()
    {
        return mState;
    }

    public long getTargetProgress()
    {
        return zzakl;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zza(this);
    }

    public boolean isDataValid()
    {
        return true;
    }

    public String toString()
    {
        return zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        MilestoneEntityCreator.zza(this, parcel, i);
    }

}
