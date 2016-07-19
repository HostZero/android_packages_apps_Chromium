.class public final Landroid/support/v7/media/E;
.super Ljava/lang/Object;
.source "MediaSessionStatus.java"


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/support/v7/media/E;->a:Landroid/os/Bundle;

    .line 87
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Landroid/support/v7/media/E;
    .locals 1

    .prologue
    .line 169
    if-eqz p0, :cond_0

    new-instance v0, Landroid/support/v7/media/E;

    invoke-direct {v0, p0}, Landroid/support/v7/media/E;-><init>(Landroid/os/Bundle;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v7/media/E;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "sessionState"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    const-string/jumbo v0, "MediaSessionStatus{ "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v0, "timestamp="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1096
    iget-object v0, p0, Landroid/support/v7/media/E;->a:Landroid/os/Bundle;

    const-string/jumbo v4, "timestamp"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 132
    sub-long/2addr v2, v4

    invoke-static {v2, v3, v1}, Landroid/support/v4/g/q;->a(JLjava/lang/StringBuilder;)V

    .line 133
    const-string/jumbo v0, " ms ago"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v0, ", sessionState="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v7/media/E;->a()I

    move-result v0

    .line 1142
    packed-switch v0, :pswitch_data_0

    .line 1150
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v0, ", queuePaused="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2115
    iget-object v2, p0, Landroid/support/v7/media/E;->a:Landroid/os/Bundle;

    const-string/jumbo v3, "queuePaused"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo v0, ", extras="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2124
    iget-object v2, p0, Landroid/support/v7/media/E;->a:Landroid/os/Bundle;

    const-string/jumbo v3, "extras"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1144
    :pswitch_0
    const-string/jumbo v0, "active"

    goto :goto_0

    .line 1146
    :pswitch_1
    const-string/jumbo v0, "ended"

    goto :goto_0

    .line 1148
    :pswitch_2
    const-string/jumbo v0, "invalidated"

    goto :goto_0

    .line 1142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
