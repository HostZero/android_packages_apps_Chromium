.class public Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readLongArray(Landroid/os/Parcel;)[J
    .locals 6

    .prologue
    .line 713
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 714
    const/4 v0, -0x1

    if-ne v2, v0, :cond_1

    const/4 v0, 0x0

    .line 719
    :cond_0
    return-object v0

    .line 715
    :cond_1
    new-array v0, v2, [J

    .line 716
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 717
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static writeLongArray(Landroid/os/Parcel;[JI)V
    .locals 4

    .prologue
    .line 723
    if-nez p1, :cond_1

    .line 724
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    :cond_0
    return-void

    .line 727
    :cond_1
    array-length v0, p1

    if-le p2, v0, :cond_2

    .line 728
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size larger than length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 732
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
