.class public Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;
.super Ljava/lang/Object;
.source "RemoteVideoInfo.java"


# instance fields
.field public currentTimeMillis:J

.field public durationMillis:J

.field public errorMessage:Ljava/lang/String;

.field public state:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->title:Ljava/lang/String;

    .line 74
    iput-wide p2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->durationMillis:J

    .line 75
    iput-object p4, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->state:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 76
    iput-wide p5, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->currentTimeMillis:J

    .line 77
    iput-object p7, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->errorMessage:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;)V
    .locals 8

    .prologue
    .line 85
    iget-object v1, p1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->title:Ljava/lang/String;

    iget-wide v2, p1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->durationMillis:J

    iget-object v4, p1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->state:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    iget-wide v5, p1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->currentTimeMillis:J

    iget-object v7, p1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->errorMessage:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;-><init>(Ljava/lang/String;JLorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;JLjava/lang/String;)V

    .line 87
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    if-ne p1, p0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    instance-of v2, p1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    if-nez v2, :cond_2

    move v0, v1

    .line 95
    goto :goto_0

    .line 98
    :cond_2
    check-cast p1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;

    .line 99
    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->durationMillis:J

    iget-wide v4, p1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->durationMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->currentTimeMillis:J

    iget-wide v4, p1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->currentTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->state:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    iget-object v3, p1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->state:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->title:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->errorMessage:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->errorMessage:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v1, 0x0

    .line 108
    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->durationMillis:J

    long-to-int v0, v2

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->durationMillis:J

    shr-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->currentTimeMillis:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 111
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->currentTimeMillis:J

    shr-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 112
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 113
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->state:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 114
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->errorMessage:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 115
    return v0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->state:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->hashCode()I

    move-result v0

    goto :goto_1

    .line 114
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method
