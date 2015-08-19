.class public Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;
.super Lcom/showmax/app/io/event/BaseFetchEvent;
.source "FetchAdvertisementsFinishedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/showmax/app/io/event/BaseFetchEvent",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/AdvertisementList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/showmax/app/io/event/BaseFetchEvent;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/showmax/lib/api/model/catalogue/AdvertisementList;)V
    .locals 0
    .param p1, "result"    # Lcom/showmax/lib/api/model/catalogue/AdvertisementList;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/showmax/app/io/event/BaseFetchEvent;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;->setSuccess(Ljava/lang/Object;)V

    .line 22
    return-void
.end method
