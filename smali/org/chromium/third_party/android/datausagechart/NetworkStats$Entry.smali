.class public Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;
.super Ljava/lang/Object;
.source "NetworkStats.java"


# instance fields
.field public iface:Ljava/lang/String;

.field public operations:J

.field public rxBytes:J

.field public rxPackets:J

.field public set:I

.field public tag:I

.field public txBytes:J

.field public txPackets:J

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 16

    .prologue
    .line 83
    sget-object v2, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIJJJJJ)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 94
    iput p2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->uid:I

    .line 95
    iput p3, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->set:I

    .line 96
    iput p4, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->tag:I

    .line 97
    iput-wide p5, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->rxBytes:J

    .line 98
    iput-wide p7, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->rxPackets:J

    .line 99
    iput-wide p9, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->txBytes:J

    .line 100
    iput-wide p11, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->txPackets:J

    .line 101
    iput-wide p13, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->operations:J

    .line 102
    return-void
.end method


# virtual methods
.method public isNegative()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 105
    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->rxBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->operations:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const-string/jumbo v1, "iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v1, " set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->set:I

    invoke-static {v2}, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->tag:I

    invoke-static {v2}, Lorg/chromium/third_party/android/datausagechart/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v1, " rxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v1, " rxPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    const-string/jumbo v1, " txBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v1, " txPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v1, " operations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/third_party/android/datausagechart/NetworkStats$Entry;->operations:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
