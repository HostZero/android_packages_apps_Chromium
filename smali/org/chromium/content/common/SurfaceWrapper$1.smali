.class final Lorg/chromium/content/common/SurfaceWrapper$1;
.super Ljava/lang/Object;
.source "SurfaceWrapper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/chromium/content/common/SurfaceWrapper$1;->createFromParcel(Landroid/os/Parcel;)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 44
    new-instance v1, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {v1, v0}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;)V

    return-object v1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/chromium/content/common/SurfaceWrapper$1;->newArray(I)[Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lorg/chromium/content/common/SurfaceWrapper;
    .locals 1

    .prologue
    .line 49
    new-array v0, p1, [Lorg/chromium/content/common/SurfaceWrapper;

    return-object v0
.end method
