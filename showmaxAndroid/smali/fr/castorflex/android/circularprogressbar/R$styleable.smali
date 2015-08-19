.class public final Lfr/castorflex/android/circularprogressbar/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/circularprogressbar/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircularProgressBar:[I

.field public static final CircularProgressBar_cpbStyle:I = 0x0

.field public static final CircularProgressBar_cpb_color:I = 0x1

.field public static final CircularProgressBar_cpb_colors:I = 0x2

.field public static final CircularProgressBar_cpb_max_sweep_angle:I = 0x5

.field public static final CircularProgressBar_cpb_min_sweep_angle:I = 0x4

.field public static final CircularProgressBar_cpb_rotation_speed:I = 0x7

.field public static final CircularProgressBar_cpb_stroke_width:I = 0x3

.field public static final CircularProgressBar_cpb_sweep_speed:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lfr/castorflex/android/circularprogressbar/R$styleable;->CircularProgressBar:[I

    return-void

    :array_0
    .array-data 4
        0x7f010063
        0x7f010064
        0x7f010065
        0x7f010066
        0x7f010067
        0x7f010068
        0x7f010069
        0x7f01006a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
