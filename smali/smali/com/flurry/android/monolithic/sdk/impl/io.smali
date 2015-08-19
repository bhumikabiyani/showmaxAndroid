.class Lcom/flurry/android/monolithic/sdk/impl/io;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/in;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/in;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/io;->a:Lcom/flurry/android/monolithic/sdk/impl/in;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/io;->a:Lcom/flurry/android/monolithic/sdk/impl/in;

    invoke-static {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/in;->a(Lcom/flurry/android/monolithic/sdk/impl/in;Landroid/location/Location;)Landroid/location/Location;

    .line 223
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method
