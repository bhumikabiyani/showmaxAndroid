.class Lcom/showmax/app/io/DataManager$CacheItem;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/io/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mTimeStamp:J


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .locals 3
    .param p1, "timeStamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lcom/showmax/app/io/DataManager$CacheItem;, "Lcom/showmax/app/io/DataManager$CacheItem<TT;>;"
    .local p3, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-wide p1, p0, Lcom/showmax/app/io/DataManager$CacheItem;->mTimeStamp:J

    .line 417
    iput-object p3, p0, Lcom/showmax/app/io/DataManager$CacheItem;->mData:Ljava/lang/Object;

    .line 419
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/showmax/app/io/DataManager$CacheItem;->mTimeStamp:J

    .line 423
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Lcom/showmax/app/io/DataManager$CacheItem;, "Lcom/showmax/app/io/DataManager$CacheItem<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/showmax/app/io/DataManager$CacheItem;-><init>(JLjava/lang/Object;)V

    .line 412
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "this":Lcom/showmax/app/io/DataManager$CacheItem;, "Lcom/showmax/app/io/DataManager$CacheItem<TT;>;"
    iget-object v0, p0, Lcom/showmax/app/io/DataManager$CacheItem;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public isValid(J)Z
    .locals 5
    .param p1, "timeStamp"    # J

    .prologue
    .line 432
    .local p0, "this":Lcom/showmax/app/io/DataManager$CacheItem;, "Lcom/showmax/app/io/DataManager$CacheItem<TT;>;"
    iget-wide v0, p0, Lcom/showmax/app/io/DataManager$CacheItem;->mTimeStamp:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
