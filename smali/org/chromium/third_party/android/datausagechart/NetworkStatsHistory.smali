.class public Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final FIELD_ACTIVE_TIME:I = 0x1

.field public static final FIELD_ALL:I = -0x1

.field public static final FIELD_OPERATIONS:I = 0x20

.field public static final FIELD_RX_BYTES:I = 0x2

.field public static final FIELD_RX_PACKETS:I = 0x4

.field public static final FIELD_TX_BYTES:I = 0x8

.field public static final FIELD_TX_PACKETS:I = 0x10

.field public static final IFACE_ALL:Ljava/lang/String;

.field public static final SET_DEFAULT:I = 0x0

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private activeTime:[J

.field private bucketCount:I

.field private bucketDuration:J

.field private bucketStart:[J

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private totalBytes:J

.field private txBytes:[J

.field private txPackets:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->IFACE_ALL:Ljava/lang/String;

    .line 607
    new-instance v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$1;

    invoke-direct {v0}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$1;-><init>()V

    sput-object v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JII)V
    .locals 3

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-wide p1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    .line 102
    new-array v0, p3, [J

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    .line 103
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    new-array v0, p3, [J

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    .line 104
    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    new-array v0, p3, [J

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    .line 105
    :cond_1
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_2

    new-array v0, p3, [J

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    .line 106
    :cond_2
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_3

    new-array v0, p3, [J

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    .line 107
    :cond_3
    and-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_4

    new-array v0, p3, [J

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    .line 108
    :cond_4
    and-int/lit8 v0, p4, 0x20

    if-eqz v0, :cond_5

    new-array v0, p3, [J

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    .line 109
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    .line 110
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->totalBytes:J

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    .line 120
    invoke-static {p1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    .line 121
    invoke-static {p1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    .line 122
    invoke-static {p1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    .line 123
    invoke-static {p1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    .line 124
    invoke-static {p1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    .line 125
    invoke-static {p1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    .line 126
    invoke-static {p1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    .line 127
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    iput v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->totalBytes:J

    .line 129
    return-void
.end method

.method private static addLong([JIJ)V
    .locals 2

    .prologue
    .line 628
    if-eqz p0, :cond_0

    aget-wide v0, p0, p1

    add-long/2addr v0, p2

    aput-wide v0, p0, p1

    .line 629
    :cond_0
    return-void
.end method

.method private ensureBuckets(JJ)V
    .locals 7

    .prologue
    .line 387
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    .line 388
    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    iget-wide v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    rem-long v4, p3, v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    rem-long/2addr v2, v4

    add-long/2addr v2, p3

    .line 390
    :goto_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 392
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    const/4 v5, 0x0

    iget v6, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    invoke-static {v4, v5, v6, v0, v1}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v4

    .line 393
    if-gez v4, :cond_0

    .line 395
    xor-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v0, v1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->insertBucket(IJ)V

    .line 390
    :cond_0
    iget-wide v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 398
    :cond_1
    return-void
.end method

.method private static getLong([JIJ)J
    .locals 0

    .prologue
    .line 620
    if-eqz p0, :cond_0

    aget-wide p2, p0, p1

    :cond_0
    return-wide p2
.end method

.method private insertBucket(IJ)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 405
    iget v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    if-lt v0, v1, :cond_5

    .line 406
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 407
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    .line 408
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    .line 409
    :cond_0
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    .line 410
    :cond_1
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    .line 411
    :cond_2
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    .line 412
    :cond_3
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    .line 413
    :cond_4
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    .line 417
    :cond_5
    iget v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    if-ge p1, v0, :cond_b

    .line 418
    add-int/lit8 v0, p1, 0x1

    .line 419
    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    sub-int/2addr v1, p1

    .line 421
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    iget-object v3, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    iget-object v3, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    :cond_6
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    iget-object v3, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    :cond_7
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    iget-object v3, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    :cond_8
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    iget-object v3, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    :cond_9
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    iget-object v3, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    :cond_a
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    iget-object v3, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    invoke-static {v2, p1, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    :cond_b
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    aput-wide p2, v0, p1

    .line 431
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    invoke-static {v0, p1, v4, v5}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->setLong([JIJ)V

    .line 432
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v0, p1, v4, v5}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->setLong([JIJ)V

    .line 433
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v0, p1, v4, v5}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->setLong([JIJ)V

    .line 434
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    invoke-static {v0, p1, v4, v5}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->setLong([JIJ)V

    .line 435
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    invoke-static {v0, p1, v4, v5}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->setLong([JIJ)V

    .line 436
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    invoke-static {v0, p1, v4, v5}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->setLong([JIJ)V

    .line 437
    iget v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    .line 438
    return-void
.end method

.method private static setLong([JIJ)V
    .locals 0

    .prologue
    .line 624
    if-eqz p0, :cond_0

    aput-wide p2, p0, p1

    .line 625
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 581
    const-string/jumbo v1, "NetworkStatsHistory: bucketDuration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 583
    if-eqz p2, :cond_7

    .line 584
    :goto_0
    if-lez v0, :cond_0

    .line 585
    const-string/jumbo v1, "(omitting "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " buckets)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    :cond_0
    :goto_1
    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_8

    .line 589
    const-string/jumbo v1, "bucketStart="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 590
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    if-eqz v1, :cond_1

    const-string/jumbo v1, " activeTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 591
    :cond_1
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    if-eqz v1, :cond_2

    const-string/jumbo v1, " rxBytes="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 592
    :cond_2
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    if-eqz v1, :cond_3

    const-string/jumbo v1, " rxPackets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 593
    :cond_3
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    if-eqz v1, :cond_4

    const-string/jumbo v1, " txBytes="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 594
    :cond_4
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    if-eqz v1, :cond_5

    const-string/jumbo v1, " txPackets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 595
    :cond_5
    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_6

    const-string/jumbo v1, " operations="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 596
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 583
    :cond_7
    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    .line 598
    :cond_8
    return-void
.end method

.method public getEnd()J
    .locals 4

    .prologue
    .line 228
    iget v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v0, v2

    .line 231
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public getIndexAfter(J)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    invoke-static {v0, v2, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 262
    if-gez v0, :cond_0

    .line 263
    xor-int/lit8 v0, v0, -0x1

    .line 267
    :goto_0
    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndexBefore(J)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    invoke-static {v0, v2, v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 248
    if-gez v0, :cond_0

    .line 249
    xor-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 253
    :goto_0
    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 251
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getValues(ILorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;)Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 274
    if-eqz p2, :cond_0

    .line 275
    :goto_0
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    aget-wide v0, v0, p1

    iput-wide v0, p2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->bucketStart:J

    .line 276
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    iput-wide v0, p2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 277
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    invoke-static {v0, p1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->activeTime:J

    .line 278
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v0, p1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->rxBytes:J

    .line 279
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v0, p1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->rxPackets:J

    .line 280
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    invoke-static {v0, p1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->txBytes:J

    .line 281
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    invoke-static {v0, p1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->txPackets:J

    .line 282
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    invoke-static {v0, p1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->operations:J

    .line 283
    return-object p2

    .line 274
    :cond_0
    new-instance p2, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;

    invoke-direct {p2}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;-><init>()V

    goto :goto_0
.end method

.method public getValues(JJJLorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;)Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;
    .locals 13

    .prologue
    .line 483
    if-eqz p7, :cond_6

    .line 484
    :goto_0
    sub-long v2, p3, p1

    move-object/from16 v0, p7

    iput-wide v2, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 485
    move-object/from16 v0, p7

    iput-wide p1, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->bucketStart:J

    .line 486
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    if-eqz v2, :cond_7

    const-wide/16 v2, 0x0

    :goto_1
    move-object/from16 v0, p7

    iput-wide v2, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->activeTime:J

    .line 487
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_8

    const-wide/16 v2, 0x0

    :goto_2
    move-object/from16 v0, p7

    iput-wide v2, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->rxBytes:J

    .line 488
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    if-eqz v2, :cond_9

    const-wide/16 v2, 0x0

    :goto_3
    move-object/from16 v0, p7

    iput-wide v2, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->rxPackets:J

    .line 489
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_a

    const-wide/16 v2, 0x0

    :goto_4
    move-object/from16 v0, p7

    iput-wide v2, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->txBytes:J

    .line 490
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    if-eqz v2, :cond_b

    const-wide/16 v2, 0x0

    :goto_5
    move-object/from16 v0, p7

    iput-wide v2, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->txPackets:J

    .line 491
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    if-eqz v2, :cond_c

    const-wide/16 v2, 0x0

    :goto_6
    move-object/from16 v0, p7

    iput-wide v2, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->operations:J

    .line 493
    move-wide/from16 v0, p3

    invoke-virtual {p0, v0, v1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v2

    move v7, v2

    .line 494
    :goto_7
    if-ltz v7, :cond_11

    .line 495
    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v2, v7

    .line 496
    iget-wide v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v4, v2

    .line 499
    cmp-long v6, v4, p1

    if-lez v6, :cond_11

    .line 501
    cmp-long v6, v2, p3

    if-gez v6, :cond_5

    .line 504
    cmp-long v6, v2, p5

    if-gez v6, :cond_d

    cmp-long v6, v4, p5

    if-lez v6, :cond_d

    const/4 v6, 0x1

    .line 506
    :goto_8
    if-eqz v6, :cond_e

    .line 507
    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    .line 513
    :goto_9
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_5

    .line 516
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    if-eqz v4, :cond_0

    move-object/from16 v0, p7

    iget-wide v4, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->activeTime:J

    iget-object v6, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    aget-wide v8, v6, v7

    mul-long/2addr v8, v2

    iget-wide v10, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    move-object/from16 v0, p7

    iput-wide v4, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->activeTime:J

    .line 517
    :cond_0
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    if-eqz v4, :cond_1

    move-object/from16 v0, p7

    iget-wide v4, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->rxBytes:J

    iget-object v6, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    aget-wide v8, v6, v7

    mul-long/2addr v8, v2

    iget-wide v10, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    move-object/from16 v0, p7

    iput-wide v4, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->rxBytes:J

    .line 518
    :cond_1
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    if-eqz v4, :cond_2

    move-object/from16 v0, p7

    iget-wide v4, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->rxPackets:J

    iget-object v6, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    aget-wide v8, v6, v7

    mul-long/2addr v8, v2

    iget-wide v10, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    move-object/from16 v0, p7

    iput-wide v4, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->rxPackets:J

    .line 519
    :cond_2
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    if-eqz v4, :cond_3

    move-object/from16 v0, p7

    iget-wide v4, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->txBytes:J

    iget-object v6, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    aget-wide v8, v6, v7

    mul-long/2addr v8, v2

    iget-wide v10, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    move-object/from16 v0, p7

    iput-wide v4, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->txBytes:J

    .line 520
    :cond_3
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    if-eqz v4, :cond_4

    move-object/from16 v0, p7

    iget-wide v4, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->txPackets:J

    iget-object v6, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    aget-wide v8, v6, v7

    mul-long/2addr v8, v2

    iget-wide v10, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    move-object/from16 v0, p7

    iput-wide v4, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->txPackets:J

    .line 521
    :cond_4
    iget-object v4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    if-eqz v4, :cond_5

    move-object/from16 v0, p7

    iget-wide v4, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->operations:J

    iget-object v6, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    aget-wide v8, v6, v7

    mul-long/2addr v2, v8

    iget-wide v8, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v2, v8

    add-long/2addr v2, v4

    move-object/from16 v0, p7

    iput-wide v2, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;->operations:J

    .line 494
    :cond_5
    add-int/lit8 v2, v7, -0x1

    move v7, v2

    goto/16 :goto_7

    .line 483
    :cond_6
    new-instance p7, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;

    invoke-direct/range {p7 .. p7}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;-><init>()V

    goto/16 :goto_0

    .line 486
    :cond_7
    const-wide/16 v2, -0x1

    goto/16 :goto_1

    .line 487
    :cond_8
    const-wide/16 v2, -0x1

    goto/16 :goto_2

    .line 488
    :cond_9
    const-wide/16 v2, -0x1

    goto/16 :goto_3

    .line 489
    :cond_a
    const-wide/16 v2, -0x1

    goto/16 :goto_4

    .line 490
    :cond_b
    const-wide/16 v2, -0x1

    goto/16 :goto_5

    .line 491
    :cond_c
    const-wide/16 v2, -0x1

    goto/16 :goto_6

    .line 504
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 509
    :cond_e
    cmp-long v6, v4, p3

    if-gez v6, :cond_f

    .line 510
    :goto_a
    cmp-long v6, v2, p1

    if-lez v6, :cond_10

    .line 511
    :goto_b
    sub-long v2, v4, v2

    goto/16 :goto_9

    :cond_f
    move-wide/from16 v4, p3

    .line 509
    goto :goto_a

    :cond_10
    move-wide v2, p1

    .line 510
    goto :goto_b

    .line 523
    :cond_11
    return-object p7
.end method

.method public getValues(JJLorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;)Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;
    .locals 9

    .prologue
    .line 475
    const-wide v6, 0x7fffffffffffffffL

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getValues(JJJLorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;)Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$Entry;

    move-result-object v0

    return-object v0
.end method

.method public recordData(JJLorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;)V
    .locals 31

    .prologue
    .line 301
    move-object/from16 v0, p5

    iget-wide v0, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v16, v0

    .line 302
    move-object/from16 v0, p5

    iget-wide v14, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->rxPackets:J

    .line 303
    move-object/from16 v0, p5

    iget-wide v12, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->txBytes:J

    .line 304
    move-object/from16 v0, p5

    iget-wide v10, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->txPackets:J

    .line 305
    move-object/from16 v0, p5

    iget-wide v8, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->operations:J

    .line 307
    invoke-virtual/range {p5 .. p5}, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->isNegative()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "tried recording negative data"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 312
    :cond_0
    invoke-direct/range {p0 .. p4}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 315
    sub-long v6, p3, p1

    .line 316
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v4

    move/from16 v30, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move/from16 v16, v30

    .line 317
    :goto_0
    if-ltz v16, :cond_2

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    move-object/from16 v17, v0

    aget-wide v18, v17, v16

    .line 319
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v20, v0

    add-long v20, v20, v18

    .line 322
    cmp-long v17, v20, p1

    if-ltz v17, :cond_2

    .line 324
    cmp-long v17, v18, p3

    if-gtz v17, :cond_1

    .line 326
    move-wide/from16 v0, v20

    move-wide/from16 v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    move-wide/from16 v0, v18

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    sub-long v18, v20, v18

    .line 327
    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_1

    .line 330
    mul-long v20, v14, v18

    div-long v20, v20, v4

    .line 331
    mul-long v22, v12, v18

    div-long v22, v22, v4

    .line 332
    mul-long v24, v10, v18

    div-long v24, v24, v4

    .line 333
    mul-long v26, v8, v18

    div-long v26, v26, v4

    .line 334
    mul-long v28, v6, v18

    div-long v28, v28, v4

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->addLong([JIJ)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v14, v14, v20

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v12, v12, v22

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v10, v10, v24

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v8, v8, v26

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v6, v6, v28

    .line 343
    sub-long v4, v4, v18

    .line 317
    :cond_1
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_0

    .line 346
    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->totalBytes:J

    move-object/from16 v0, p5

    iget-wide v6, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p5

    iget-wide v8, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->txBytes:J

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->totalBytes:J

    .line 347
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 602
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 603
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->dump(Ljava/io/PrintWriter;Z)V

    .line 604
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 135
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 136
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 137
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 138
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 139
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 140
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->operations:[J

    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 141
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStatsHistory;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    return-void
.end method
