.class public Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;
.super Ljava/lang/Object;
.source "ActivityPlayer.java"

# interfaces
.implements Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerAsset"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mLenght:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mYear:Ljava/lang/String;

.field final synthetic this$0:Lcom/showmax/app/ui/ActivityPlayer;


# direct methods
.method public constructor <init>(Lcom/showmax/app/ui/ActivityPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityPlayer;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "lenght"    # Ljava/lang/String;
    .param p5, "year"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;

    .prologue
    .line 976
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    iput-object p2, p0, Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;->mUrl:Ljava/lang/String;

    .line 978
    iput-object p3, p0, Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;->mTitle:Ljava/lang/String;

    .line 979
    iput-object p4, p0, Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;->mLenght:Ljava/lang/String;

    .line 980
    iput-object p5, p0, Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;->mYear:Ljava/lang/String;

    .line 981
    iput-object p6, p0, Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;->mDescription:Ljava/lang/String;

    .line 982
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLenght()Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;->mLenght:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;->mYear:Ljava/lang/String;

    return-object v0
.end method
