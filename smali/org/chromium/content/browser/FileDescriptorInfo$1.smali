.class final Lorg/chromium/content/browser/FileDescriptorInfo$1;
.super Ljava/lang/Object;
.source "FileDescriptorInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/FileDescriptorInfo$1;->createFromParcel(Landroid/os/Parcel;)Lorg/chromium/content/browser/FileDescriptorInfo;

    move-result-object v0

    return-object v0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lorg/chromium/content/browser/FileDescriptorInfo;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lorg/chromium/content/browser/FileDescriptorInfo;

    invoke-direct {v0, p1}, Lorg/chromium/content/browser/FileDescriptorInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/FileDescriptorInfo$1;->newArray(I)[Lorg/chromium/content/browser/FileDescriptorInfo;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lorg/chromium/content/browser/FileDescriptorInfo;
    .locals 1

    .prologue
    .line 60
    new-array v0, p1, [Lorg/chromium/content/browser/FileDescriptorInfo;

    return-object v0
.end method
