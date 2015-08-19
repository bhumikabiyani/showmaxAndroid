// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.snapshot;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.zzlw;

// Referenced classes of package com.google.android.gms.games.snapshot:
//            SnapshotMetadata, SnapshotMetadataEntityCreator

public final class SnapshotMetadataEntity
    implements SafeParcelable, SnapshotMetadata
{

    public static final SnapshotMetadataEntityCreator CREATOR = new SnapshotMetadataEntityCreator();
    private final int zzFG;
    private final String zzSy;
    private final String zzZO;
    private final String zzaef;
    private final GameEntity zzahV;
    private final Uri zzakH;
    private final PlayerEntity zzakK;
    private final String zzakL;
    private final long zzakM;
    private final long zzakN;
    private final float zzakO;
    private final String zzakP;
    private final boolean zzakQ;
    private final long zzakR;

    SnapshotMetadataEntity(int i, GameEntity gameentity, PlayerEntity playerentity, String s, Uri uri, String s1, String s2, 
            String s3, long l, long l1, float f, String s4, 
            boolean flag, long l2)
    {
        zzFG = i;
        zzahV = gameentity;
        zzakK = playerentity;
        zzaef = s;
        zzakH = uri;
        zzakL = s1;
        zzakO = f;
        zzSy = s2;
        zzZO = s3;
        zzakM = l;
        zzakN = l1;
        zzakP = s4;
        zzakQ = flag;
        zzakR = l2;
    }

    public SnapshotMetadataEntity(SnapshotMetadata snapshotmetadata)
    {
        zzFG = 5;
        zzahV = new GameEntity(snapshotmetadata.getGame());
        zzakK = new PlayerEntity(snapshotmetadata.getOwner());
        zzaef = snapshotmetadata.getSnapshotId();
        zzakH = snapshotmetadata.getCoverImageUri();
        zzakL = snapshotmetadata.getCoverImageUrl();
        zzakO = snapshotmetadata.getCoverImageAspectRatio();
        zzSy = snapshotmetadata.getTitle();
        zzZO = snapshotmetadata.getDescription();
        zzakM = snapshotmetadata.getLastModifiedTimestamp();
        zzakN = snapshotmetadata.getPlayedTime();
        zzakP = snapshotmetadata.getUniqueName();
        zzakQ = snapshotmetadata.hasChangePending();
        zzakR = snapshotmetadata.getProgressValue();
    }

    static int zza(SnapshotMetadata snapshotmetadata)
    {
        return zzw.hashCode(new Object[] {
            snapshotmetadata.getGame(), snapshotmetadata.getOwner(), snapshotmetadata.getSnapshotId(), snapshotmetadata.getCoverImageUri(), Float.valueOf(snapshotmetadata.getCoverImageAspectRatio()), snapshotmetadata.getTitle(), snapshotmetadata.getDescription(), Long.valueOf(snapshotmetadata.getLastModifiedTimestamp()), Long.valueOf(snapshotmetadata.getPlayedTime()), snapshotmetadata.getUniqueName(), 
            Boolean.valueOf(snapshotmetadata.hasChangePending()), Long.valueOf(snapshotmetadata.getProgressValue())
        });
    }

    static boolean zza(SnapshotMetadata snapshotmetadata, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof SnapshotMetadata) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (snapshotmetadata == obj) goto _L4; else goto _L3
_L3:
        obj = (SnapshotMetadata)obj;
        if (!zzw.equal(((SnapshotMetadata) (obj)).getGame(), snapshotmetadata.getGame()) || !zzw.equal(((SnapshotMetadata) (obj)).getOwner(), snapshotmetadata.getOwner()) || !zzw.equal(((SnapshotMetadata) (obj)).getSnapshotId(), snapshotmetadata.getSnapshotId()) || !zzw.equal(((SnapshotMetadata) (obj)).getCoverImageUri(), snapshotmetadata.getCoverImageUri()) || !zzw.equal(Float.valueOf(((SnapshotMetadata) (obj)).getCoverImageAspectRatio()), Float.valueOf(snapshotmetadata.getCoverImageAspectRatio())) || !zzw.equal(((SnapshotMetadata) (obj)).getTitle(), snapshotmetadata.getTitle()) || !zzw.equal(((SnapshotMetadata) (obj)).getDescription(), snapshotmetadata.getDescription()) || !zzw.equal(Long.valueOf(((SnapshotMetadata) (obj)).getLastModifiedTimestamp()), Long.valueOf(snapshotmetadata.getLastModifiedTimestamp())) || !zzw.equal(Long.valueOf(((SnapshotMetadata) (obj)).getPlayedTime()), Long.valueOf(snapshotmetadata.getPlayedTime())) || !zzw.equal(((SnapshotMetadata) (obj)).getUniqueName(), snapshotmetadata.getUniqueName()) || !zzw.equal(Boolean.valueOf(((SnapshotMetadata) (obj)).hasChangePending()), Boolean.valueOf(snapshotmetadata.hasChangePending())))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(Long.valueOf(((SnapshotMetadata) (obj)).getProgressValue()), Long.valueOf(snapshotmetadata.getProgressValue()))) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(SnapshotMetadata snapshotmetadata)
    {
        return zzw.zzk(snapshotmetadata).zza("Game", snapshotmetadata.getGame()).zza("Owner", snapshotmetadata.getOwner()).zza("SnapshotId", snapshotmetadata.getSnapshotId()).zza("CoverImageUri", snapshotmetadata.getCoverImageUri()).zza("CoverImageUrl", snapshotmetadata.getCoverImageUrl()).zza("CoverImageAspectRatio", Float.valueOf(snapshotmetadata.getCoverImageAspectRatio())).zza("Description", snapshotmetadata.getDescription()).zza("LastModifiedTimestamp", Long.valueOf(snapshotmetadata.getLastModifiedTimestamp())).zza("PlayedTime", Long.valueOf(snapshotmetadata.getPlayedTime())).zza("UniqueName", snapshotmetadata.getUniqueName()).zza("ChangePending", Boolean.valueOf(snapshotmetadata.hasChangePending())).zza("ProgressValue", Long.valueOf(snapshotmetadata.getProgressValue())).toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return zza(this, obj);
    }

    public SnapshotMetadata freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public float getCoverImageAspectRatio()
    {
        return zzakO;
    }

    public Uri getCoverImageUri()
    {
        return zzakH;
    }

    public String getCoverImageUrl()
    {
        return zzakL;
    }

    public String getDescription()
    {
        return zzZO;
    }

    public void getDescription(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzZO, chararraybuffer);
    }

    public Game getGame()
    {
        return zzahV;
    }

    public long getLastModifiedTimestamp()
    {
        return zzakM;
    }

    public Player getOwner()
    {
        return zzakK;
    }

    public long getPlayedTime()
    {
        return zzakN;
    }

    public long getProgressValue()
    {
        return zzakR;
    }

    public String getSnapshotId()
    {
        return zzaef;
    }

    public String getTitle()
    {
        return zzSy;
    }

    public String getUniqueName()
    {
        return zzakP;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public boolean hasChangePending()
    {
        return zzakQ;
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
        SnapshotMetadataEntityCreator.zza(this, parcel, i);
    }

}
