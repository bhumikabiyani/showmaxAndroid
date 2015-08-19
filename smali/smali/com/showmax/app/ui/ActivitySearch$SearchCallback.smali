.class abstract Lcom/showmax/app/ui/ActivitySearch$SearchCallback;
.super Lcom/showmax/lib/api/io/ApiCallback;
.source "ActivitySearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivitySearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SearchCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/showmax/lib/api/io/ApiCallback",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/AssetList;",
        ">;"
    }
.end annotation


# instance fields
.field private mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 592
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/showmax/lib/api/io/ApiCallback;-><init>(I)V

    .line 593
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySearch$SearchCallback;->mQuery:Ljava/lang/String;

    .line 594
    return-void
.end method


# virtual methods
.method public match(Ljava/lang/String;)Z
    .locals 6
    .param p1, "currentQuery"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 598
    iget-object v3, p0, Lcom/showmax/app/ui/ActivitySearch$SearchCallback;->mQuery:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/showmax/app/ui/ActivitySearch$SearchCallback;->mQuery:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 599
    .local v0, "match":Z
    :goto_0
    const-string v3, "[%s]::[SearchCallback]::[match]::[CallbackQuery: %s]::[CurrentQuery: %s]::[match: %b]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySearch$SearchCallback;->mQuery:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object p1, v4, v1

    const/4 v1, 0x3

    .line 600
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    .line 599
    invoke-static {v3, v4}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    return v0

    .end local v0    # "match":Z
    :cond_0
    move v0, v2

    .line 598
    goto :goto_0
.end method
