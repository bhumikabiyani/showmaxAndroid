// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.internal.zzlw;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.quest:
//            Quest, QuestEntityCreator, Milestone, MilestoneEntity

public final class QuestEntity
    implements SafeParcelable, Quest
{

    public static final QuestEntityCreator CREATOR = new QuestEntityCreator();
    private final String mName;
    private final int mState;
    private final int zzFG;
    private final int zzJp;
    private final String zzZO;
    private final long zzadi;
    private final GameEntity zzahV;
    private final String zzakn;
    private final long zzako;
    private final Uri zzakp;
    private final String zzakq;
    private final long zzakr;
    private final Uri zzaks;
    private final String zzakt;
    private final long zzaku;
    private final long zzakv;
    private final ArrayList zzakw;

    QuestEntity(int i, GameEntity gameentity, String s, long l, Uri uri, String s1, 
            String s2, long l1, long l2, Uri uri1, String s3, 
            String s4, long l3, long l4, int j, int k, 
            ArrayList arraylist)
    {
        zzFG = i;
        zzahV = gameentity;
        zzakn = s;
        zzako = l;
        zzakp = uri;
        zzakq = s1;
        zzZO = s2;
        zzakr = l1;
        zzadi = l2;
        zzaks = uri1;
        zzakt = s3;
        mName = s4;
        zzaku = l3;
        zzakv = l4;
        mState = j;
        zzJp = k;
        zzakw = arraylist;
    }

    public QuestEntity(Quest quest)
    {
        zzFG = 2;
        zzahV = new GameEntity(quest.getGame());
        zzakn = quest.getQuestId();
        zzako = quest.getAcceptedTimestamp();
        zzZO = quest.getDescription();
        zzakp = quest.getBannerImageUri();
        zzakq = quest.getBannerImageUrl();
        zzakr = quest.getEndTimestamp();
        zzaks = quest.getIconImageUri();
        zzakt = quest.getIconImageUrl();
        zzadi = quest.getLastUpdatedTimestamp();
        mName = quest.getName();
        zzaku = quest.zzpa();
        zzakv = quest.getStartTimestamp();
        mState = quest.getState();
        zzJp = quest.getType();
        quest = quest.zzoZ();
        int j = quest.size();
        zzakw = new ArrayList(j);
        for (int i = 0; i < j; i++)
        {
            zzakw.add((MilestoneEntity)(MilestoneEntity)((Milestone)quest.get(i)).freeze());
        }

    }

    static int zza(Quest quest)
    {
        return zzw.hashCode(new Object[] {
            quest.getGame(), quest.getQuestId(), Long.valueOf(quest.getAcceptedTimestamp()), quest.getBannerImageUri(), quest.getDescription(), Long.valueOf(quest.getEndTimestamp()), quest.getIconImageUri(), Long.valueOf(quest.getLastUpdatedTimestamp()), quest.zzoZ(), quest.getName(), 
            Long.valueOf(quest.zzpa()), Long.valueOf(quest.getStartTimestamp()), Integer.valueOf(quest.getState())
        });
    }

    static boolean zza(Quest quest, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof Quest) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (quest == obj) goto _L4; else goto _L3
_L3:
        obj = (Quest)obj;
        if (!zzw.equal(((Quest) (obj)).getGame(), quest.getGame()) || !zzw.equal(((Quest) (obj)).getQuestId(), quest.getQuestId()) || !zzw.equal(Long.valueOf(((Quest) (obj)).getAcceptedTimestamp()), Long.valueOf(quest.getAcceptedTimestamp())) || !zzw.equal(((Quest) (obj)).getBannerImageUri(), quest.getBannerImageUri()) || !zzw.equal(((Quest) (obj)).getDescription(), quest.getDescription()) || !zzw.equal(Long.valueOf(((Quest) (obj)).getEndTimestamp()), Long.valueOf(quest.getEndTimestamp())) || !zzw.equal(((Quest) (obj)).getIconImageUri(), quest.getIconImageUri()) || !zzw.equal(Long.valueOf(((Quest) (obj)).getLastUpdatedTimestamp()), Long.valueOf(quest.getLastUpdatedTimestamp())) || !zzw.equal(((Quest) (obj)).zzoZ(), quest.zzoZ()) || !zzw.equal(((Quest) (obj)).getName(), quest.getName()) || !zzw.equal(Long.valueOf(((Quest) (obj)).zzpa()), Long.valueOf(quest.zzpa())) || !zzw.equal(Long.valueOf(((Quest) (obj)).getStartTimestamp()), Long.valueOf(quest.getStartTimestamp())))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(Integer.valueOf(((Quest) (obj)).getState()), Integer.valueOf(quest.getState()))) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(Quest quest)
    {
        return zzw.zzk(quest).zza("Game", quest.getGame()).zza("QuestId", quest.getQuestId()).zza("AcceptedTimestamp", Long.valueOf(quest.getAcceptedTimestamp())).zza("BannerImageUri", quest.getBannerImageUri()).zza("BannerImageUrl", quest.getBannerImageUrl()).zza("Description", quest.getDescription()).zza("EndTimestamp", Long.valueOf(quest.getEndTimestamp())).zza("IconImageUri", quest.getIconImageUri()).zza("IconImageUrl", quest.getIconImageUrl()).zza("LastUpdatedTimestamp", Long.valueOf(quest.getLastUpdatedTimestamp())).zza("Milestones", quest.zzoZ()).zza("Name", quest.getName()).zza("NotifyTimestamp", Long.valueOf(quest.zzpa())).zza("StartTimestamp", Long.valueOf(quest.getStartTimestamp())).zza("State", Integer.valueOf(quest.getState())).toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return zza(this, obj);
    }

    public Quest freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public long getAcceptedTimestamp()
    {
        return zzako;
    }

    public Uri getBannerImageUri()
    {
        return zzakp;
    }

    public String getBannerImageUrl()
    {
        return zzakq;
    }

    public Milestone getCurrentMilestone()
    {
        return (Milestone)zzoZ().get(0);
    }

    public String getDescription()
    {
        return zzZO;
    }

    public void getDescription(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzZO, chararraybuffer);
    }

    public long getEndTimestamp()
    {
        return zzakr;
    }

    public Game getGame()
    {
        return zzahV;
    }

    public Uri getIconImageUri()
    {
        return zzaks;
    }

    public String getIconImageUrl()
    {
        return zzakt;
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

    public String getQuestId()
    {
        return zzakn;
    }

    public long getStartTimestamp()
    {
        return zzakv;
    }

    public int getState()
    {
        return mState;
    }

    public int getType()
    {
        return zzJp;
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

    public boolean isEndingSoon()
    {
        return zzaku <= System.currentTimeMillis() + 0x1b7740L;
    }

    public String toString()
    {
        return zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        QuestEntityCreator.zza(this, parcel, i);
    }

    public List zzoZ()
    {
        return new ArrayList(zzakw);
    }

    public long zzpa()
    {
        return zzaku;
    }

}
