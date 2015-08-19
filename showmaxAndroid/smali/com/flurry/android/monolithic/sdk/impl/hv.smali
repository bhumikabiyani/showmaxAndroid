.class Lcom/flurry/android/monolithic/sdk/impl/hv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IJ)Ljava/util/LinkedHashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    .line 9
    if-ge p0, v2, :cond_0

    move p0, v2

    .line 12
    :cond_0
    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    move-wide p1, v0

    .line 15
    :cond_1
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, p0, :cond_3

    .line 20
    if-nez v4, :cond_2

    move-wide v2, v0

    .line 24
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_2
    move-wide v2, p1

    .line 23
    goto :goto_1

    .line 27
    :cond_3
    return-object v5
.end method
