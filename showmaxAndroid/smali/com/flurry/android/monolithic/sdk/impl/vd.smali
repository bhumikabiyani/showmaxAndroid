.class public Lcom/flurry/android/monolithic/sdk/impl/vd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final b:Lcom/flurry/android/monolithic/sdk/impl/vd;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/vd;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/vd;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/vd;->b:Lcom/flurry/android/monolithic/sdk/impl/vd;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vd;->a:Ljava/util/HashMap;

    .line 30
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/vf;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/vf;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/vd;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    .line 36
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/vg;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/vg;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/vd;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    .line 37
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/vm;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/vm;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/vd;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    .line 38
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/vk;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/vk;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/vd;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    .line 39
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/vl;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/vl;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/vd;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    .line 41
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/vj;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/vj;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/vd;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    .line 42
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/vi;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/vi;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/vd;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    .line 44
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/vn;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/vn;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/vd;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    .line 48
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/vh;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/vh;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/vd;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    .line 49
    return-void
.end method

.method public static a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/vd;->b:Lcom/flurry/android/monolithic/sdk/impl/vd;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/vd;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/vd;->a:Ljava/util/HashMap;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/adk;->a()Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/adk;->a(Ljava/lang/reflect/Type;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method
