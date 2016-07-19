.class public abstract Lorg/chromium/content/common/IChildProcessCallback$Stub;
.super Landroid/os/Binder;
.source "IChildProcessCallback.java"

# interfaces
.implements Lorg/chromium/content/common/IChildProcessCallback;


# static fields
.field static final TRANSACTION_establishSurfacePeer:I = 0x1

.field static final TRANSACTION_getSurfaceTextureSurface:I = 0x5

.field static final TRANSACTION_getViewSurface:I = 0x2

.field static final TRANSACTION_onDownloadStarted:I = 0x6

.field static final TRANSACTION_registerSurfaceTextureSurface:I = 0x3

.field static final TRANSACTION_unregisterSurfaceTextureSurface:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessCallback"

    invoke-virtual {p0, p0, v0}, Lorg/chromium/content/common/IChildProcessCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/chromium/content/common/IChildProcessCallback;
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
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/chromium/content/common/IChildProcessCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lorg/chromium/content/common/IChildProcessCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/chromium/content/common/IChildProcessCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/chromium/content/common/IChildProcessCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v2, "org.chromium.content.common.IChildProcessCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 61
    invoke-virtual {p0, v2, v0, v3, v4}, Lorg/chromium/content/common/IChildProcessCallback$Stub;->establishSurfacePeer(ILandroid/view/Surface;II)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    :sswitch_2
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    invoke-virtual {p0, v0}, Lorg/chromium/content/common/IChildProcessCallback$Stub;->getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v0

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v0, p3, v1}, Lorg/chromium/content/common/SurfaceWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    :sswitch_3
    const-string/jumbo v2, "org.chromium.content.common.IChildProcessCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 95
    :cond_2
    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/content/common/IChildProcessCallback$Stub;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 101
    :sswitch_4
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    invoke-virtual {p0, v0, v2}, Lorg/chromium/content/common/IChildProcessCallback$Stub;->unregisterSurfaceTextureSurface(II)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 112
    :sswitch_5
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    invoke-virtual {p0, v0}, Lorg/chromium/content/common/IChildProcessCallback$Stub;->getSurfaceTextureSurface(I)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v0

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v0, :cond_3

    .line 118
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {v0, p3, v1}, Lorg/chromium/content/common/SurfaceWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 122
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    :sswitch_6
    const-string/jumbo v0, "org.chromium.content.common.IChildProcessCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 132
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    invoke-virtual {p0, v0, v2}, Lorg/chromium/content/common/IChildProcessCallback$Stub;->onDownloadStarted(ZI)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 130
    goto :goto_1

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
