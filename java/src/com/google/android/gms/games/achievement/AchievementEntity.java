// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.achievement;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.zzlw;

// Referenced classes of package com.google.android.gms.games.achievement:
//            Achievement, AchievementEntityCreator

public final class AchievementEntity
    implements SafeParcelable, Achievement
{

    public static final AchievementEntityCreator CREATOR = new AchievementEntityCreator();
    private final String mName;
    private final int mState;
    private final int zzFG;
    private final int zzJp;
    private final String zzZO;
    private final String zzacY;
    private final Uri zzacZ;
    private final String zzada;
    private final Uri zzadb;
    private final String zzadc;
    private final int zzadd;
    private final String zzade;
    private final PlayerEntity zzadf;
    private final int zzadg;
    private final String zzadh;
    private final long zzadi;
    private final long zzadj;

    AchievementEntity(int i, String s, int j, String s1, String s2, Uri uri, String s3, 
            Uri uri1, String s4, int k, String s5, PlayerEntity playerentity, int l, int i1, 
            String s6, long l1, long l2)
    {
        zzFG = i;
        zzacY = s;
        zzJp = j;
        mName = s1;
        zzZO = s2;
        zzacZ = uri;
        zzada = s3;
        zzadb = uri1;
        zzadc = s4;
        zzadd = k;
        zzade = s5;
        zzadf = playerentity;
        mState = l;
        zzadg = i1;
        zzadh = s6;
        zzadi = l1;
        zzadj = l2;
    }

    public AchievementEntity(Achievement achievement)
    {
        zzFG = 1;
        zzacY = achievement.getAchievementId();
        zzJp = achievement.getType();
        mName = achievement.getName();
        zzZO = achievement.getDescription();
        zzacZ = achievement.getUnlockedImageUri();
        zzada = achievement.getUnlockedImageUrl();
        zzadb = achievement.getRevealedImageUri();
        zzadc = achievement.getRevealedImageUrl();
        zzadf = (PlayerEntity)achievement.getPlayer().freeze();
        mState = achievement.getState();
        zzadi = achievement.getLastUpdatedTimestamp();
        zzadj = achievement.getXpValue();
        if (achievement.getType() == 1)
        {
            zzadd = achievement.getTotalSteps();
            zzade = achievement.getFormattedTotalSteps();
            zzadg = achievement.getCurrentSteps();
            zzadh = achievement.getFormattedCurrentSteps();
        } else
        {
            zzadd = 0;
            zzade = null;
            zzadg = 0;
            zzadh = null;
        }
        com.google.android.gms.common.internal.zzb.zzh(zzacY);
        com.google.android.gms.common.internal.zzb.zzh(zzZO);
    }

    static int zza(Achievement achievement)
    {
        int i;
        int j;
        if (achievement.getType() == 1)
        {
            j = achievement.getCurrentSteps();
            i = achievement.getTotalSteps();
        } else
        {
            i = 0;
            j = 0;
        }
        return zzw.hashCode(new Object[] {
            achievement.getAchievementId(), achievement.getName(), Integer.valueOf(achievement.getType()), achievement.getDescription(), Long.valueOf(achievement.getXpValue()), Integer.valueOf(achievement.getState()), Long.valueOf(achievement.getLastUpdatedTimestamp()), achievement.getPlayer(), Integer.valueOf(j), Integer.valueOf(i)
        });
    }

    static boolean zza(Achievement achievement, Object obj)
    {
        boolean flag2 = true;
        if (obj instanceof Achievement) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L4:
        return flag1;
_L2:
        flag1 = flag2;
        if (achievement == obj) goto _L4; else goto _L3
_L3:
        obj = (Achievement)obj;
        boolean flag;
        if (achievement.getType() == 1)
        {
            flag1 = zzw.equal(Integer.valueOf(((Achievement) (obj)).getCurrentSteps()), Integer.valueOf(achievement.getCurrentSteps()));
            flag = zzw.equal(Integer.valueOf(((Achievement) (obj)).getTotalSteps()), Integer.valueOf(achievement.getTotalSteps()));
        } else
        {
            flag = true;
            flag1 = true;
        }
        if (!zzw.equal(((Achievement) (obj)).getAchievementId(), achievement.getAchievementId()) || !zzw.equal(((Achievement) (obj)).getName(), achievement.getName()) || !zzw.equal(Integer.valueOf(((Achievement) (obj)).getType()), Integer.valueOf(achievement.getType())) || !zzw.equal(((Achievement) (obj)).getDescription(), achievement.getDescription()) || !zzw.equal(Long.valueOf(((Achievement) (obj)).getXpValue()), Long.valueOf(achievement.getXpValue())) || !zzw.equal(Integer.valueOf(((Achievement) (obj)).getState()), Integer.valueOf(achievement.getState())) || !zzw.equal(Long.valueOf(((Achievement) (obj)).getLastUpdatedTimestamp()), Long.valueOf(achievement.getLastUpdatedTimestamp())) || !zzw.equal(((Achievement) (obj)).getPlayer(), achievement.getPlayer()) || !flag1)
        {
            break; /* Loop/switch isn't completed */
        }
        flag1 = flag2;
        if (flag) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(Achievement achievement)
    {
        com.google.android.gms.common.internal.zzw.zza zza1 = zzw.zzk(achievement).zza("Id", achievement.getAchievementId()).zza("Type", Integer.valueOf(achievement.getType())).zza("Name", achievement.getName()).zza("Description", achievement.getDescription()).zza("Player", achievement.getPlayer()).zza("State", Integer.valueOf(achievement.getState()));
        if (achievement.getType() == 1)
        {
            zza1.zza("CurrentSteps", Integer.valueOf(achievement.getCurrentSteps()));
            zza1.zza("TotalSteps", Integer.valueOf(achievement.getTotalSteps()));
        }
        return zza1.toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return zza(this, obj);
    }

    public Achievement freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public String getAchievementId()
    {
        return zzacY;
    }

    public int getCurrentSteps()
    {
        return zzadg;
    }

    public String getDescription()
    {
        return zzZO;
    }

    public void getDescription(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzZO, chararraybuffer);
    }

    public String getFormattedCurrentSteps()
    {
        return zzadh;
    }

    public void getFormattedCurrentSteps(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzadh, chararraybuffer);
    }

    public String getFormattedTotalSteps()
    {
        return zzade;
    }

    public void getFormattedTotalSteps(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzade, chararraybuffer);
    }

    public long getLastUpdatedTimestamp()
    {
        return zzadi;
    }

    public String getName()
    {
        return mName;
    }

    public void getName(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(mName, chararraybuffer);
    }

    public Player getPlayer()
    {
        return zzadf;
    }

    public Uri getRevealedImageUri()
    {
        return zzadb;
    }

    public String getRevealedImageUrl()
    {
        return zzadc;
    }

    public int getState()
    {
        return mState;
    }

    public int getTotalSteps()
    {
        return zzadd;
    }

    public int getType()
    {
        return zzJp;
    }

    public Uri getUnlockedImageUri()
    {
        return zzacZ;
    }

    public String getUnlockedImageUrl()
    {
        return zzada;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public long getXpValue()
    {
        return zzadj;
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
        AchievementEntityCreator.zza(this, parcel, i);
    }

}
