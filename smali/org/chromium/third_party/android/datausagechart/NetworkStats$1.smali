.class final Lorg/chromium/third_party/android/datausagechart/NetworkStats$1;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/datausagechart/NetworkStats$1;->createFromParcel(Landroid/os/Parcel;)Lorg/chromium/third_party/android/datausagechart/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Lorg/chromium/third_party/android/datausagechart/NetworkStats;
    .locals 1

    .prologue
    .line 697
    new-instance v0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;

    invoke-direct {v0, p1}, Lorg/chromium/third_party/android/datausagechart/NetworkStats;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lorg/chromium/third_party/android/datausagechart/NetworkStats$1;->newArray(I)[Lorg/chromium/third_party/android/datausagechart/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lorg/chromium/third_party/android/datausagechart/NetworkStats;
    .locals 1

    .prologue
    .line 702
    new-array v0, p1, [Lorg/chromium/third_party/android/datausagechart/NetworkStats;

    return-object v0
.end method
