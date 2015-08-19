.class public final Lcom/flurry/android/monolithic/sdk/impl/ja;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:Z

.field private static c:I

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    const/16 v0, 0xfa0

    sput v0, Lcom/flurry/android/monolithic/sdk/impl/ja;->a:I

    .line 14
    sput-boolean v1, Lcom/flurry/android/monolithic/sdk/impl/ja;->b:Z

    .line 23
    const/4 v0, 0x5

    sput v0, Lcom/flurry/android/monolithic/sdk/impl/ja;->c:I

    .line 30
    sput-boolean v1, Lcom/flurry/android/monolithic/sdk/impl/ja;->d:Z

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/android/monolithic/sdk/impl/ja;->b:Z

    .line 36
    return-void
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 56
    sput p0, Lcom/flurry/android/monolithic/sdk/impl/ja;->c:I

    .line 57
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    invoke-static {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 104
    invoke-static {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/android/monolithic/sdk/impl/ja;->b:Z

    .line 42
    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/flurry/android/monolithic/sdk/impl/ja;->b:Z

    if-nez v0, :cond_0

    sget v0, Lcom/flurry/android/monolithic/sdk/impl/ja;->c:I

    if-gt v0, p0, :cond_0

    .line 117
    invoke-static {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/flurry/android/monolithic/sdk/impl/ja;->c:I

    return v0
.end method

.method private static c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/flurry/android/monolithic/sdk/impl/ja;->d:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-static {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method private static c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private static d(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 132
    const-string v3, "FlurryAgent"

    .line 139
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    move v2, v1

    .line 140
    :goto_1
    if-ge v2, v0, :cond_0

    .line 141
    sget v1, Lcom/flurry/android/monolithic/sdk/impl/ja;->a:I

    sub-int v4, v0, v2

    if-le v1, v4, :cond_2

    move v1, v0

    .line 142
    :goto_2
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {p0, v3, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 144
    if-gtz v2, :cond_3

    .line 151
    :cond_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 141
    :cond_2
    sget v1, Lcom/flurry/android/monolithic/sdk/impl/ja;->a:I

    add-int/2addr v1, v2

    goto :goto_2

    :cond_3
    move v2, v1

    .line 150
    goto :goto_1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
