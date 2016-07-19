.class public abstract Lorg/chromium/content/common/IChildProcessService$Stub;
.super Landroid/os/Binder;
.source "IChildProcessService.java"

# interfaces
.implements Lorg/chromium/content/common/IChildProcessService;


# static fields
.field static final TRANSACTION_crashIntentionallyForTesting:I = 0x2

.field static final TRANSACTION_setupConnection:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessService"

    invoke-virtual {p0, p0, v0}, Lorg/chromium/content/common/IChildProcessService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/chromium/content/common/IChildProcessService;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/chromium/content/common/IChildProcessService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lorg/chromium/content/common/IChildProcessService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/chromium/content/common/IChildProcessService$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/chromium/content/common/IChildProcessService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 56
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/content/common/IChildProcessCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/chromium/content/common/IChildProcessCallback;

    move-result-object v2

    .line 57
    invoke-virtual {p0, v0, v2}, Lorg/chromium/content/common/IChildProcessService$Stub;->setupConnection(Landroid/os/Bundle;Lorg/chromium/content/common/IChildProcessCallback;)I

    move-result v0

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    .line 60
    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 64
    :sswitch_2
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lorg/chromium/content/common/IChildProcessService$Stub;->crashIntentionallyForTesting()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 67
    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
