.class public final enum Lcom/flurry/android/monolithic/sdk/impl/ql;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/rh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/ql;",
        ">;",
        "Lcom/flurry/android/monolithic/sdk/impl/rh;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum b:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum c:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum d:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum e:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum f:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum g:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum h:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum i:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum j:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum k:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum l:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum m:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum n:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum o:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum p:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field public static final enum q:Lcom/flurry/android/monolithic/sdk/impl/ql;

.field private static final synthetic s:[Lcom/flurry/android/monolithic/sdk/impl/ql;


# instance fields
.field final r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "USE_ANNOTATIONS"

    invoke-direct {v0, v1, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->a:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 82
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "AUTO_DETECT_SETTERS"

    invoke-direct {v0, v1, v4, v4}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->b:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 98
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "AUTO_DETECT_CREATORS"

    invoke-direct {v0, v1, v5, v4}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->c:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 115
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "AUTO_DETECT_FIELDS"

    invoke-direct {v0, v1, v6, v4}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->d:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 133
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "USE_GETTERS_AS_SETTERS"

    invoke-direct {v0, v1, v7, v4}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->e:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 143
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "CAN_OVERRIDE_ACCESS_MODIFIERS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->f:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 165
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "USE_BIG_DECIMAL_FOR_FLOATS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->g:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 183
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "USE_BIG_INTEGER_FOR_INTS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->h:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 197
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "USE_JAVA_ARRAY_FOR_JSON_ARRAY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->i:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 213
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "READ_ENUMS_USING_TO_STRING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->j:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 238
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "FAIL_ON_UNKNOWN_PROPERTIES"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v4}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->k:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 253
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "FAIL_ON_NULL_FOR_PRIMITIVES"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->l:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 271
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "FAIL_ON_NUMBERS_FOR_ENUMS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->m:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 291
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "WRAP_EXCEPTIONS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v4}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->n:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 310
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "ACCEPT_SINGLE_VALUE_AS_ARRAY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->o:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 322
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "UNWRAP_ROOT_VALUE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->p:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 341
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    const-string v1, "ACCEPT_EMPTY_STRING_AS_NULL_OBJECT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ql;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->q:Lcom/flurry/android/monolithic/sdk/impl/ql;

    .line 48
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/ql;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ql;->a:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ql;->b:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ql;->c:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ql;->d:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ql;->e:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ql;->f:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ql;->g:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ql;->h:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ql;->i:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ql;->j:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ql;->k:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ql;->l:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ql;->m:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ql;->n:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ql;->o:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ql;->p:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ql;->q:Lcom/flurry/android/monolithic/sdk/impl/ql;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->s:[Lcom/flurry/android/monolithic/sdk/impl/ql;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 348
    iput-boolean p3, p0, Lcom/flurry/android/monolithic/sdk/impl/ql;->r:Z

    .line 349
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/ql;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/monolithic/sdk/impl/ql;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->s:[Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {v0}, [Lcom/flurry/android/monolithic/sdk/impl/ql;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/monolithic/sdk/impl/ql;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ql;->r:Z

    return v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 355
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ql;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
