.class public final enum Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;
.super Ljava/lang/Enum;
.source "CircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

.field public static final enum NORMAL:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

.field public static final enum ROUNDED:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;->NORMAL:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    new-instance v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    const-string v1, "ROUNDED"

    invoke-direct {v0, v1, v3}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;->ROUNDED:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    const/4 v0, 0x2

    new-array v0, v0, [Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    sget-object v1, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;->NORMAL:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    aput-object v1, v0, v2

    sget-object v1, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;->ROUNDED:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    aput-object v1, v0, v3

    sput-object v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;->$VALUES:[Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    return-object v0
.end method

.method public static values()[Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;->$VALUES:[Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    invoke-virtual {v0}, [Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    return-object v0
.end method
