// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.game;

import android.os.Parcel;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.internal.game:
//            ExtendedGame, GameBadge, GameBadgeEntity, ExtendedGameEntityCreator, 
//            GameBadgeEntityCreator

public final class ExtendedGameEntity extends GamesDowngradeableSafeParcel
    implements ExtendedGame
{
    static final class ExtendedGameEntityCreatorCompat extends ExtendedGameEntityCreator
    {

        public Object createFromParcel(Parcel parcel)
        {
            return zzcZ(parcel);
        }

        public ExtendedGameEntity zzcZ(Parcel parcel)
        {
            if (ExtendedGameEntity.zzc(ExtendedGameEntity.zzmC()) || ExtendedGameEntity.zzbN(com/google/android/gms/games/internal/game/ExtendedGameEntity.getCanonicalName()))
            {
                return super.zzcZ(parcel);
            }
            GameEntity gameentity = (GameEntity)GameEntity.CREATOR.createFromParcel(parcel);
            int j = parcel.readInt();
            String s;
            String s1;
            ArrayList arraylist;
            int k;
            int l;
            long l1;
            long l2;
            long l3;
            boolean flag;
            if (parcel.readInt() == 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            k = parcel.readInt();
            l1 = parcel.readLong();
            l2 = parcel.readLong();
            s = parcel.readString();
            l3 = parcel.readLong();
            s1 = parcel.readString();
            l = parcel.readInt();
            arraylist = new ArrayList(l);
            for (int i = 0; i < l; i++)
            {
                arraylist.add(GameBadgeEntity.CREATOR.zzda(parcel));
            }

            return new ExtendedGameEntity(2, gameentity, j, flag, k, l1, l2, s, l3, s1, arraylist, null);
        }

        ExtendedGameEntityCreatorCompat()
        {
        }
    }


    public static final ExtendedGameEntityCreator CREATOR = new ExtendedGameEntityCreatorCompat();
    private final int zzFG;
    private final GameEntity zzahV;
    private final int zzahW;
    private final boolean zzahX;
    private final int zzahY;
    private final long zzahZ;
    private final long zzaia;
    private final String zzaib;
    private final long zzaic;
    private final String zzaid;
    private final ArrayList zzaie;
    private final SnapshotMetadataEntity zzaif;

    ExtendedGameEntity(int i, GameEntity gameentity, int j, boolean flag, int k, long l, 
            long l1, String s, long l2, String s1, ArrayList arraylist, 
            SnapshotMetadataEntity snapshotmetadataentity)
    {
        zzFG = i;
        zzahV = gameentity;
        zzahW = j;
        zzahX = flag;
        zzahY = k;
        zzahZ = l;
        zzaia = l1;
        zzaib = s;
        zzaic = l2;
        zzaid = s1;
        zzaie = arraylist;
        zzaif = snapshotmetadataentity;
    }

    public ExtendedGameEntity(ExtendedGame extendedgame)
    {
        Object obj1 = null;
        super();
        zzFG = 2;
        Object obj = extendedgame.getGame();
        int j;
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = new GameEntity(((Game) (obj)));
        }
        zzahV = ((GameEntity) (obj));
        zzahW = extendedgame.zzoi();
        zzahX = extendedgame.zzoj();
        zzahY = extendedgame.zzok();
        zzahZ = extendedgame.zzol();
        zzaia = extendedgame.zzom();
        zzaib = extendedgame.zzon();
        zzaic = extendedgame.zzoo();
        zzaid = extendedgame.zzop();
        obj = extendedgame.zzoq();
        if (obj == null)
        {
            obj = obj1;
        } else
        {
            obj = new SnapshotMetadataEntity(((SnapshotMetadata) (obj)));
        }
        zzaif = ((SnapshotMetadataEntity) (obj));
        extendedgame = extendedgame.zzoh();
        j = extendedgame.size();
        zzaie = new ArrayList(j);
        for (int i = 0; i < j; i++)
        {
            zzaie.add((GameBadgeEntity)((GameBadge)extendedgame.get(i)).freeze());
        }

    }

    static int zza(ExtendedGame extendedgame)
    {
        return zzw.hashCode(new Object[] {
            extendedgame.getGame(), Integer.valueOf(extendedgame.zzoi()), Boolean.valueOf(extendedgame.zzoj()), Integer.valueOf(extendedgame.zzok()), Long.valueOf(extendedgame.zzol()), Long.valueOf(extendedgame.zzom()), extendedgame.zzon(), Long.valueOf(extendedgame.zzoo()), extendedgame.zzop()
        });
    }

    static boolean zza(ExtendedGame extendedgame, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof ExtendedGame) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (extendedgame == obj) goto _L4; else goto _L3
_L3:
        obj = (ExtendedGame)obj;
        if (!zzw.equal(((ExtendedGame) (obj)).getGame(), extendedgame.getGame()) || !zzw.equal(Integer.valueOf(((ExtendedGame) (obj)).zzoi()), Integer.valueOf(extendedgame.zzoi())) || !zzw.equal(Boolean.valueOf(((ExtendedGame) (obj)).zzoj()), Boolean.valueOf(extendedgame.zzoj())) || !zzw.equal(Integer.valueOf(((ExtendedGame) (obj)).zzok()), Integer.valueOf(extendedgame.zzok())) || !zzw.equal(Long.valueOf(((ExtendedGame) (obj)).zzol()), Long.valueOf(extendedgame.zzol())) || !zzw.equal(Long.valueOf(((ExtendedGame) (obj)).zzom()), Long.valueOf(extendedgame.zzom())) || !zzw.equal(((ExtendedGame) (obj)).zzon(), extendedgame.zzon()) || !zzw.equal(Long.valueOf(((ExtendedGame) (obj)).zzoo()), Long.valueOf(extendedgame.zzoo())))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(((ExtendedGame) (obj)).zzop(), extendedgame.zzop())) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(ExtendedGame extendedgame)
    {
        return zzw.zzk(extendedgame).zza("Game", extendedgame.getGame()).zza("Availability", Integer.valueOf(extendedgame.zzoi())).zza("Owned", Boolean.valueOf(extendedgame.zzoj())).zza("AchievementUnlockedCount", Integer.valueOf(extendedgame.zzok())).zza("LastPlayedServerTimestamp", Long.valueOf(extendedgame.zzol())).zza("PriceMicros", Long.valueOf(extendedgame.zzom())).zza("FormattedPrice", extendedgame.zzon()).zza("FullPriceMicros", Long.valueOf(extendedgame.zzoo())).zza("FormattedFullPrice", extendedgame.zzop()).zza("Snapshot", extendedgame.zzoq()).toString();
    }

    static boolean zzbN(String s)
    {
        return zzbf(s);
    }

    static boolean zzc(Integer integer)
    {
        return zzd(integer);
    }

    static Integer zzmC()
    {
        return zziX();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return zza(this, obj);
    }

    public Object freeze()
    {
        return zzos();
    }

    public Game getGame()
    {
        return zzor();
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
        boolean flag = false;
        if (!zziY())
        {
            ExtendedGameEntityCreator.zza(this, parcel, i);
        } else
        {
            zzahV.writeToParcel(parcel, i);
            parcel.writeInt(zzahW);
            int j;
            int k;
            if (zzahX)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            parcel.writeInt(j);
            parcel.writeInt(zzahY);
            parcel.writeLong(zzahZ);
            parcel.writeLong(zzaia);
            parcel.writeString(zzaib);
            parcel.writeLong(zzaic);
            parcel.writeString(zzaid);
            k = zzaie.size();
            parcel.writeInt(k);
            j = ((flag) ? 1 : 0);
            while (j < k) 
            {
                ((GameBadgeEntity)zzaie.get(j)).writeToParcel(parcel, i);
                j++;
            }
        }
    }

    public ArrayList zzoh()
    {
        return new ArrayList(zzaie);
    }

    public int zzoi()
    {
        return zzahW;
    }

    public boolean zzoj()
    {
        return zzahX;
    }

    public int zzok()
    {
        return zzahY;
    }

    public long zzol()
    {
        return zzahZ;
    }

    public long zzom()
    {
        return zzaia;
    }

    public String zzon()
    {
        return zzaib;
    }

    public long zzoo()
    {
        return zzaic;
    }

    public String zzop()
    {
        return zzaid;
    }

    public SnapshotMetadata zzoq()
    {
        return zzaif;
    }

    public GameEntity zzor()
    {
        return zzahV;
    }

    public ExtendedGame zzos()
    {
        return this;
    }

}
