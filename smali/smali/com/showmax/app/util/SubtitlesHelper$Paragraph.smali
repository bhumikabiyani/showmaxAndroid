.class public Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
.super Ljava/lang/Object;
.source "SubtitlesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/util/SubtitlesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Paragraph"
.end annotation


# instance fields
.field public begin:J

.field public end:J

.field public text:Ljava/lang/String;

.field final synthetic this$0:Lcom/showmax/app/util/SubtitlesHelper;


# direct methods
.method public constructor <init>(Lcom/showmax/app/util/SubtitlesHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/util/SubtitlesHelper;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
