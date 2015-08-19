.class public Lcom/flurry/android/monolithic/sdk/impl/yw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/yj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/android/monolithic/sdk/impl/yj",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/yw;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

.field protected b:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected e:Lcom/flurry/android/monolithic/sdk/impl/yi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/flurry/android/monolithic/sdk/impl/yw;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/yw;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/yw;-><init>()V

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/yw;->b(Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/flurry/android/monolithic/sdk/impl/yi;)Lcom/flurry/android/monolithic/sdk/impl/yw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/util/Collection;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rw;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/qk;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/yg;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/rw;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->a:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    if-ne v0, v1, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/yw;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/util/Collection;ZZ)Lcom/flurry/android/monolithic/sdk/impl/yi;

    move-result-object v2

    .line 107
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/yx;->a:[I

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->b:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->b:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :pswitch_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/yk;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->d:Ljava/lang/Class;

    invoke-direct {v0, p2, v2, p4, v1}, Lcom/flurry/android/monolithic/sdk/impl/yk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/yi;Lcom/flurry/android/monolithic/sdk/impl/qc;Ljava/lang/Class;)V

    goto :goto_0

    .line 111
    :pswitch_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/yo;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->d:Ljava/lang/Class;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->c:Ljava/lang/String;

    move-object v1, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/yo;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/yi;Lcom/flurry/android/monolithic/sdk/impl/qc;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_2
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/yr;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->d:Ljava/lang/Class;

    invoke-direct {v0, p2, v2, p4, v1}, Lcom/flurry/android/monolithic/sdk/impl/yr;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/yi;Lcom/flurry/android/monolithic/sdk/impl/qc;Ljava/lang/Class;)V

    goto :goto_0

    .line 116
    :pswitch_3
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ym;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->d:Ljava/lang/Class;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->c:Ljava/lang/String;

    move-object v1, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/ym;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/yi;Lcom/flurry/android/monolithic/sdk/impl/qc;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/util/Collection;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/yg;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->a:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    if-ne v0, v1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/yw;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/util/Collection;ZZ)Lcom/flurry/android/monolithic/sdk/impl/yi;

    move-result-object v1

    .line 83
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/yx;->a:[I

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->b:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v2}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->b:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/yl;

    invoke-direct {v0, v1, p4}, Lcom/flurry/android/monolithic/sdk/impl/yl;-><init>(Lcom/flurry/android/monolithic/sdk/impl/yi;Lcom/flurry/android/monolithic/sdk/impl/qc;)V

    goto :goto_0

    .line 87
    :pswitch_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/yq;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p4, v2}, Lcom/flurry/android/monolithic/sdk/impl/yq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/yi;Lcom/flurry/android/monolithic/sdk/impl/qc;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_2
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ys;

    invoke-direct {v0, v1, p4}, Lcom/flurry/android/monolithic/sdk/impl/ys;-><init>(Lcom/flurry/android/monolithic/sdk/impl/yi;Lcom/flurry/android/monolithic/sdk/impl/qc;)V

    goto :goto_0

    .line 91
    :pswitch_3
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/yn;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p4, v2}, Lcom/flurry/android/monolithic/sdk/impl/yn;-><init>(Lcom/flurry/android/monolithic/sdk/impl/yi;Lcom/flurry/android/monolithic/sdk/impl/qc;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/util/Collection;ZZ)Lcom/flurry/android/monolithic/sdk/impl/yi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rf",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/yg;",
            ">;ZZ)",
            "Lcom/flurry/android/monolithic/sdk/impl/yi;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->e:Lcom/flurry/android/monolithic/sdk/impl/yi;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->e:Lcom/flurry/android/monolithic/sdk/impl/yi;

    .line 197
    :goto_0
    return-object v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->a:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    if-nez v0, :cond_1

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not build, \'init()\' not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/yx;->b:[I

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->a:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-virtual {v1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not know how to construct standard type id resolver for idType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->a:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :pswitch_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/yt;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rf;->m()Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/yt;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/adk;)V

    goto :goto_0

    .line 193
    :pswitch_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/yu;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rf;->m()Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/yu;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/adk;)V

    goto :goto_0

    .line 195
    :pswitch_2
    invoke-static {p1, p2, p3, p4, p5}, Lcom/flurry/android/monolithic/sdk/impl/za;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/util/Collection;ZZ)Lcom/flurry/android/monolithic/sdk/impl/za;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public synthetic a(Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/flurry/android/monolithic/sdk/impl/yj;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/yw;->b(Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/flurry/android/monolithic/sdk/impl/yw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/flurry/android/monolithic/sdk/impl/yi;)Lcom/flurry/android/monolithic/sdk/impl/yj;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/yw;->b(Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/flurry/android/monolithic/sdk/impl/yi;)Lcom/flurry/android/monolithic/sdk/impl/yw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/yj;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/yw;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/yw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/yj;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/yw;->b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/yw;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public b(Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/flurry/android/monolithic/sdk/impl/yw;
    .locals 2

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "includeAs can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->b:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    .line 134
    return-object p0
.end method

.method public b(Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/flurry/android/monolithic/sdk/impl/yi;)Lcom/flurry/android/monolithic/sdk/impl/yw;
    .locals 2

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "idType can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->a:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    .line 69
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->e:Lcom/flurry/android/monolithic/sdk/impl/yi;

    .line 71
    invoke-virtual {p1}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->getDefaultPropertyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->c:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/yw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/yw;"
        }
    .end annotation

    .prologue
    .line 155
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->d:Ljava/lang/Class;

    .line 156
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/yw;
    .locals 1

    .prologue
    .line 145
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->a:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    invoke-virtual {v0}, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->getDefaultPropertyName()Ljava/lang/String;

    move-result-object p1

    .line 148
    :cond_1
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/yw;->c:Ljava/lang/String;

    .line 149
    return-object p0
.end method
