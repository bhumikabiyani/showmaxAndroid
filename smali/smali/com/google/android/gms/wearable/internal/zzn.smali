.class public Lcom/google/android/gms/wearable/internal/zzn;
.super Lcom/google/android/gms/common/data/zzd;

# interfaces
.implements Lcom/google/android/gms/wearable/DataItemAsset;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzd;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/zzn;->zzvi()Lcom/google/android/gms/wearable/DataItemAsset;

    move-result-object v0

    return-object v0
.end method

.method public getDataItemKey()Ljava/lang/String;
    .locals 1

    const-string v0, "asset_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzn;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "asset_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzn;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzvi()Lcom/google/android/gms/wearable/DataItemAsset;
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/zzl;-><init>(Lcom/google/android/gms/wearable/DataItemAsset;)V

    return-object v0
.end method
