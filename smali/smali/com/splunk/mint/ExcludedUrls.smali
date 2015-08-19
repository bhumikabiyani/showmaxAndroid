.class public Lcom/splunk/mint/ExcludedUrls;
.super Ljava/util/ArrayList;
.source "ExcludedUrls.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_URL_LENGTH:I = 0x5

.field private static final serialVersionUID:J = -0x3b98a92462e2b1c7L


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "defaultExcludedUrls"    # [Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 16
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/splunk/mint/ExcludedUrls;->addValue(Ljava/lang/String;)V

    .line 15
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x5

    .line 22
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Lcom/splunk/mint/ExcludedUrls;->add(Ljava/lang/Object;)Z

    .line 28
    :goto_0
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The excluded URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " should be at least "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " characters long!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/splunk/mint/Logger;->logError(Ljava/lang/String;)V

    goto :goto_0
.end method
