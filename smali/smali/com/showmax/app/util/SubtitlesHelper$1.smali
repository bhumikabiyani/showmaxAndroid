.class Lcom/showmax/app/util/SubtitlesHelper$1;
.super Ljava/lang/Object;
.source "SubtitlesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/util/SubtitlesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/util/SubtitlesHelper;


# direct methods
.method constructor <init>(Lcom/showmax/app/util/SubtitlesHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/util/SubtitlesHelper;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xa

    .line 91
    iget-object v2, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    # getter for: Lcom/showmax/app/util/SubtitlesHelper;->mCurrentParagraph:Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    invoke-static {v2}, Lcom/showmax/app/util/SubtitlesHelper;->access$000(Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    move-result-object v2

    if-nez v2, :cond_0

    .line 131
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    iget-object v3, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    # getter for: Lcom/showmax/app/util/SubtitlesHelper;->mListener:Lcom/showmax/app/util/SubtitlesHelper$SubtitlesHelperListener;
    invoke-static {v3}, Lcom/showmax/app/util/SubtitlesHelper;->access$200(Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper$SubtitlesHelperListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesHelperListener;->getCurrentPosition()J

    move-result-wide v4

    # setter for: Lcom/showmax/app/util/SubtitlesHelper;->mCurrentPosition:J
    invoke-static {v2, v4, v5}, Lcom/showmax/app/util/SubtitlesHelper;->access$102(Lcom/showmax/app/util/SubtitlesHelper;J)J

    .line 98
    iget-object v2, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    # getter for: Lcom/showmax/app/util/SubtitlesHelper;->mCurrentParagraph:Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    invoke-static {v2}, Lcom/showmax/app/util/SubtitlesHelper;->access$000(Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    move-result-object v2

    iget-wide v2, v2, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;->begin:J

    iget-object v4, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    # getter for: Lcom/showmax/app/util/SubtitlesHelper;->mCurrentPosition:J
    invoke-static {v4}, Lcom/showmax/app/util/SubtitlesHelper;->access$100(Lcom/showmax/app/util/SubtitlesHelper;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 99
    .local v0, "diff":J
    cmp-long v2, v0, v10

    if-gtz v2, :cond_1

    .line 106
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    iget-object v3, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    # getter for: Lcom/showmax/app/util/SubtitlesHelper;->mCurrentParagraph:Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    invoke-static {v3}, Lcom/showmax/app/util/SubtitlesHelper;->access$000(Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    move-result-object v3

    iget-object v3, v3, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    iget-object v5, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    # getter for: Lcom/showmax/app/util/SubtitlesHelper;->mCurrentParagraph:Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    invoke-static {v5}, Lcom/showmax/app/util/SubtitlesHelper;->access$000(Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    move-result-object v5

    iget-wide v6, v5, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;->begin:J

    iget-object v5, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    # getter for: Lcom/showmax/app/util/SubtitlesHelper;->mCurrentParagraph:Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    invoke-static {v5}, Lcom/showmax/app/util/SubtitlesHelper;->access$000(Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    move-result-object v5

    iget-wide v8, v5, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;->end:J

    # invokes: Lcom/showmax/app/util/SubtitlesHelper;->getDuration(JJ)J
    invoke-static {v4, v6, v7, v8, v9}, Lcom/showmax/app/util/SubtitlesHelper;->access$300(Lcom/showmax/app/util/SubtitlesHelper;JJ)J

    move-result-wide v4

    add-long/2addr v4, v0

    # invokes: Lcom/showmax/app/util/SubtitlesHelper;->showParagraph(Ljava/lang/String;J)V
    invoke-static {v2, v3, v4, v5}, Lcom/showmax/app/util/SubtitlesHelper;->access$400(Lcom/showmax/app/util/SubtitlesHelper;Ljava/lang/String;J)V

    .line 120
    :goto_1
    iget-object v2, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    iget-object v3, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    # getter for: Lcom/showmax/app/util/SubtitlesHelper;->mCurrentSubtitles:Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;
    invoke-static {v3}, Lcom/showmax/app/util/SubtitlesHelper;->access$500(Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/showmax/app/util/SubtitlesHelper$SubtitlesItem;->next()Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    move-result-object v3

    # setter for: Lcom/showmax/app/util/SubtitlesHelper;->mCurrentParagraph:Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    invoke-static {v2, v3}, Lcom/showmax/app/util/SubtitlesHelper;->access$002(Lcom/showmax/app/util/SubtitlesHelper;Lcom/showmax/app/util/SubtitlesHelper$Paragraph;)Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    # getter for: Lcom/showmax/app/util/SubtitlesHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/showmax/app/util/SubtitlesHelper;->access$600(Lcom/showmax/app/util/SubtitlesHelper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    iget-object v3, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    # getter for: Lcom/showmax/app/util/SubtitlesHelper;->mCurrentParagraph:Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    invoke-static {v3}, Lcom/showmax/app/util/SubtitlesHelper;->access$000(Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    move-result-object v3

    iget-object v3, v3, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    iget-object v5, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    # getter for: Lcom/showmax/app/util/SubtitlesHelper;->mCurrentParagraph:Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    invoke-static {v5}, Lcom/showmax/app/util/SubtitlesHelper;->access$000(Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    move-result-object v5

    iget-wide v6, v5, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;->begin:J

    iget-object v5, p0, Lcom/showmax/app/util/SubtitlesHelper$1;->this$0:Lcom/showmax/app/util/SubtitlesHelper;

    # getter for: Lcom/showmax/app/util/SubtitlesHelper;->mCurrentParagraph:Lcom/showmax/app/util/SubtitlesHelper$Paragraph;
    invoke-static {v5}, Lcom/showmax/app/util/SubtitlesHelper;->access$000(Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper$Paragraph;

    move-result-object v5

    iget-wide v8, v5, Lcom/showmax/app/util/SubtitlesHelper$Paragraph;->end:J

    # invokes: Lcom/showmax/app/util/SubtitlesHelper;->getDuration(JJ)J
    invoke-static {v4, v6, v7, v8, v9}, Lcom/showmax/app/util/SubtitlesHelper;->access$300(Lcom/showmax/app/util/SubtitlesHelper;JJ)J

    move-result-wide v4

    # invokes: Lcom/showmax/app/util/SubtitlesHelper;->showParagraph(Ljava/lang/String;J)V
    invoke-static {v2, v3, v4, v5}, Lcom/showmax/app/util/SubtitlesHelper;->access$400(Lcom/showmax/app/util/SubtitlesHelper;Ljava/lang/String;J)V

    goto :goto_1
.end method
