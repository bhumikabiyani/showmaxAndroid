.class public Lcom/afollestad/materialdialogs/ThemeSingleton;
.super Ljava/lang/Object;
.source "ThemeSingleton.java"


# static fields
.field private static singleton:Lcom/afollestad/materialdialogs/ThemeSingleton;


# instance fields
.field public backgroundColor:I

.field public btnSelectorNegative:I

.field public btnSelectorNeutral:I

.field public btnSelectorPositive:I

.field public btnSelectorStacked:I

.field public btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public contentColor:I

.field public contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public darkTheme:Z

.field public dividerColor:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public itemColor:I

.field public itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public listSelector:I

.field public negativeColor:I

.field public neutralColor:I

.field public positiveColor:I

.field public titleColor:I

.field public titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

.field public widgetColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->darkTheme:Z

    .line 24
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->titleColor:I

    .line 25
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->contentColor:I

    .line 26
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->positiveColor:I

    .line 27
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->neutralColor:I

    .line 28
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->negativeColor:I

    .line 29
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->widgetColor:I

    .line 30
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->itemColor:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->icon:Landroid/graphics/drawable/Drawable;

    .line 32
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->backgroundColor:I

    .line 33
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->dividerColor:I

    .line 35
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->listSelector:I

    .line 37
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->btnSelectorStacked:I

    .line 39
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->btnSelectorPositive:I

    .line 41
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->btnSelectorNeutral:I

    .line 43
    iput v1, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->btnSelectorNegative:I

    .line 46
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 47
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 48
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 49
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->itemsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 50
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->START:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/ThemeSingleton;->buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    return-void
.end method

.method public static get()Lcom/afollestad/materialdialogs/ThemeSingleton;
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/afollestad/materialdialogs/ThemeSingleton;->get(Z)Lcom/afollestad/materialdialogs/ThemeSingleton;

    move-result-object v0

    return-object v0
.end method

.method public static get(Z)Lcom/afollestad/materialdialogs/ThemeSingleton;
    .locals 1
    .param p0, "createIfNull"    # Z

    .prologue
    .line 14
    sget-object v0, Lcom/afollestad/materialdialogs/ThemeSingleton;->singleton:Lcom/afollestad/materialdialogs/ThemeSingleton;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 15
    new-instance v0, Lcom/afollestad/materialdialogs/ThemeSingleton;

    invoke-direct {v0}, Lcom/afollestad/materialdialogs/ThemeSingleton;-><init>()V

    sput-object v0, Lcom/afollestad/materialdialogs/ThemeSingleton;->singleton:Lcom/afollestad/materialdialogs/ThemeSingleton;

    .line 16
    :cond_0
    sget-object v0, Lcom/afollestad/materialdialogs/ThemeSingleton;->singleton:Lcom/afollestad/materialdialogs/ThemeSingleton;

    return-object v0
.end method
