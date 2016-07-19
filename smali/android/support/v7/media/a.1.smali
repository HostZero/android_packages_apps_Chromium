.class public final Landroid/support/v7/media/a;
.super Ljava/lang/Object;
.source "MediaItemStatus.java"


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Landroid/support/v7/media/a;->a:Landroid/os/Bundle;

    .line 200
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Landroid/support/v7/media/a;
    .locals 1

    .prologue
    .line 307
    if-eqz p0, :cond_0

    new-instance v0, Landroid/support/v7/media/a;

    invoke-direct {v0, p0}, Landroid/support/v7/media/a;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/v7/media/a;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/v7/media/a;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "playbackState"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final c()J
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v7/media/a;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "contentPosition"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Landroid/support/v7/media/a;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "contentDuration"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/v7/media/a;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    const-string/jumbo v0, "MediaItemStatus{ "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string/jumbo v0, "timestamp="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/support/v7/media/a;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v1}, Landroid/support/v4/g/q;->a(JLjava/lang/StringBuilder;)V

    .line 260
    const-string/jumbo v0, " ms ago"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string/jumbo v0, ", playbackState="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v7/media/a;->b()I

    move-result v0

    .line 1270
    packed-switch v0, :pswitch_data_0

    .line 1288
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string/jumbo v0, ", contentPosition="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/media/a;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 263
    const-string/jumbo v0, ", contentDuration="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/media/a;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 264
    const-string/jumbo v0, ", extras="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/media/a;->e()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    const-string/jumbo v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1272
    :pswitch_0
    const-string/jumbo v0, "pending"

    goto :goto_0

    .line 1274
    :pswitch_1
    const-string/jumbo v0, "buffering"

    goto :goto_0

    .line 1276
    :pswitch_2
    const-string/jumbo v0, "playing"

    goto :goto_0

    .line 1278
    :pswitch_3
    const-string/jumbo v0, "paused"

    goto :goto_0

    .line 1280
    :pswitch_4
    const-string/jumbo v0, "finished"

    goto :goto_0

    .line 1282
    :pswitch_5
    const-string/jumbo v0, "canceled"

    goto :goto_0

    .line 1284
    :pswitch_6
    const-string/jumbo v0, "invalidated"

    goto :goto_0

    .line 1286
    :pswitch_7
    const-string/jumbo v0, "error"

    goto :goto_0

    .line 1270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
