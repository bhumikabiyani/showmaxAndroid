.class public final Lcom/flurry/android/monolithic/sdk/impl/agc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:[Lcom/flurry/android/monolithic/sdk/impl/pb;


# instance fields
.field protected a:Lcom/flurry/android/monolithic/sdk/impl/agc;

.field protected b:J

.field protected final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1130
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/pb;

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/agc;->d:[Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 1131
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/pb;->values()[Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 1132
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/agc;->d:[Lcom/flurry/android/monolithic/sdk/impl/pb;

    const/16 v2, 0xf

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1133
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->c:[Ljava/lang/Object;

    .line 1152
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/agc;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->a:Lcom/flurry/android/monolithic/sdk/impl/agc;

    return-object v0
.end method

.method public a(ILcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/agc;
    .locals 2

    .prologue
    .line 1176
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1177
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/agc;->b(ILcom/flurry/android/monolithic/sdk/impl/pb;)V

    .line 1178
    const/4 v0, 0x0

    .line 1182
    :goto_0
    return-object v0

    .line 1180
    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/agc;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/agc;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->a:Lcom/flurry/android/monolithic/sdk/impl/agc;

    .line 1181
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->a:Lcom/flurry/android/monolithic/sdk/impl/agc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/agc;->b(ILcom/flurry/android/monolithic/sdk/impl/pb;)V

    .line 1182
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->a:Lcom/flurry/android/monolithic/sdk/impl/agc;

    goto :goto_0
.end method

.method public a(ILcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/agc;
    .locals 2

    .prologue
    .line 1187
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1188
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/agc;->b(ILcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    .line 1189
    const/4 v0, 0x0

    .line 1193
    :goto_0
    return-object v0

    .line 1191
    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/agc;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/agc;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->a:Lcom/flurry/android/monolithic/sdk/impl/agc;

    .line 1192
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->a:Lcom/flurry/android/monolithic/sdk/impl/agc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/agc;->b(ILcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V

    .line 1193
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->a:Lcom/flurry/android/monolithic/sdk/impl/agc;

    goto :goto_0
.end method

.method public a(I)Lcom/flurry/android/monolithic/sdk/impl/pb;
    .locals 3

    .prologue
    .line 1158
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->b:J

    .line 1159
    if-lez p1, :cond_0

    .line 1160
    shl-int/lit8 v2, p1, 0x2

    shr-long/2addr v0, v2

    .line 1162
    :cond_0
    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    .line 1163
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/agc;->d:[Lcom/flurry/android/monolithic/sdk/impl/pb;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->c:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b(ILcom/flurry/android/monolithic/sdk/impl/pb;)V
    .locals 4

    .prologue
    .line 1198
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/pb;->ordinal()I

    move-result v0

    int-to-long v0, v0

    .line 1202
    if-lez p1, :cond_0

    .line 1203
    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    .line 1205
    :cond_0
    iget-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->b:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->b:J

    .line 1206
    return-void
.end method

.method public b(ILcom/flurry/android/monolithic/sdk/impl/pb;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->c:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 1211
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/pb;->ordinal()I

    move-result v0

    int-to-long v0, v0

    .line 1215
    if-lez p1, :cond_0

    .line 1216
    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    .line 1218
    :cond_0
    iget-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->b:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/agc;->b:J

    .line 1219
    return-void
.end method
