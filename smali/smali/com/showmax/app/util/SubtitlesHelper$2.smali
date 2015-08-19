.class Lcom/showmax/app/util/SubtitlesHelper$2;
.super Landroid/os/CountDownTimer;
.source "SubtitlesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/util/SubtitlesHelper;->showParagraph(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/util/SubtitlesHelper;


# direct methods
.method constructor <init>(Lcom/showmax/app/util/SubtitlesHelper;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/util/SubtitlesHelper;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 234
    iput-object p1, p0, Lcom/showmax/app/util/SubtitlesHelper$2;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/showmax/app/util/SubtitlesHelper$2;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    # getter for: Lcom/showmax/app/util/SubtitlesHelper;->mSubtitlesTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/showmax/app/util/SubtitlesHelper;->access$700(Lcom/showmax/app/util/SubtitlesHelper;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 239
    return-void
.end method
