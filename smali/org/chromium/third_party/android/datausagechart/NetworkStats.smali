.class public Lorg/chromium/third_party/android/datausagechart/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final IFACE_ALL:Ljava/lang/String;

.field public static final SET_ALL:I = -0x1

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private final elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    .line 694
    new-instance v0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$1;

    invoke-direct {v0}, Lorg/chromium/third_party/android/datausagechart/NetworkStats$1;-><init>()V

    sput-object v0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->elapsedRealtime:J

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->size:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->iface:[Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->uid:[I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->set:[I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->tag:[I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->rxBytes:[J

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->rxPackets:[J

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->txBytes:[J

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->txPackets:[J

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->operations:[J

    .line 175
    return-void
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    packed-switch p0, :pswitch_data_0

    .line 671
    const-string/jumbo v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 665
    :pswitch_0
    const-string/jumbo v0, "ALL"

    goto :goto_0

    .line 667
    :pswitch_1
    const-string/jumbo v0, "DEFAULT"

    goto :goto_0

    .line 669
    :pswitch_2
    const-string/jumbo v0, "FOREGROUND"

    goto :goto_0

    .line 663
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 643
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    const-string/jumbo v0, "NetworkStats: elapsedRealtime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 645
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->size:I

    if-ge v0, v1, :cond_0

    .line 646
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 647
    const-string/jumbo v1, "  iface="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 648
    const-string/jumbo v1, " uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->uid:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 649
    const-string/jumbo v1, " set="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->set:[I

    aget v1, v1, v0

    invoke-static {v1}, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 650
    const-string/jumbo v1, " tag="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->tag:[I

    aget v1, v1, v0

    invoke-static {v1}, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    const-string/jumbo v1, " rxBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 652
    const-string/jumbo v1, " rxPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 653
    const-string/jumbo v1, " txBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 654
    const-string/jumbo v1, " txPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 655
    const-string/jumbo v1, " operations="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 657
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 684
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 685
    const-string/jumbo v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 686
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    iget v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->uid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 183
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->set:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 184
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->tag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 185
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 186
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 187
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 188
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 189
    iget-object v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->operations:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 190
    return-void
.end method
