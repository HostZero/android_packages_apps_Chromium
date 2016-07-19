.class public Ljp/tomorrowkey/android/gifplayer/BaseGifImage;
.super Ljava/lang/Object;
.source "BaseGifImage.java"


# static fields
.field private static final i:[B


# instance fields
.field a:I

.field b:Z

.field c:[I

.field d:I

.field e:I

.field private final f:[B

.field private g:I

.field private h:I

.field private j:Z

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x300

    new-array v0, v0, [B

    sput-object v0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->i:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;-><init>([BI)V

    .line 45
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v2, 0x100

    new-array v2, v2, [I

    iput-object v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->c:[I

    .line 77
    iput-object p1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->f:[B

    .line 80
    new-instance v3, Ljp/tomorrowkey/android/gifplayer/BaseGifImage$GifHeaderStream;

    invoke-direct {v3, p0, p1, v0}, Ljp/tomorrowkey/android/gifplayer/BaseGifImage$GifHeaderStream;-><init>(Ljp/tomorrowkey/android/gifplayer/BaseGifImage;[BB)V

    .line 81
    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Ljp/tomorrowkey/android/gifplayer/BaseGifImage$GifHeaderStream;->skip(J)J

    .line 1123
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v4, 0x47

    if-ne v2, v4, :cond_1

    move v2, v1

    .line 1124
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v4, 0x49

    if-ne v2, v4, :cond_2

    move v2, v1

    .line 1125
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v4, 0x46

    if-ne v2, v4, :cond_3

    move v2, v1

    .line 1126
    :goto_2
    if-nez v2, :cond_4

    .line 1127
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->b:Z

    .line 84
    :cond_0
    :goto_3
    invoke-virtual {v3}, Ljp/tomorrowkey/android/gifplayer/BaseGifImage$GifHeaderStream;->getPosition()I

    move-result v0

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_4
    :try_start_1
    invoke-virtual {v3}, Ljp/tomorrowkey/android/gifplayer/BaseGifImage$GifHeaderStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :goto_5
    return-void

    :cond_1
    move v2, v0

    .line 1123
    goto :goto_0

    :cond_2
    move v2, v0

    .line 1124
    goto :goto_1

    :cond_3
    move v2, v0

    .line 1125
    goto :goto_2

    .line 1132
    :cond_4
    const-wide/16 v4, 0x3

    :try_start_2
    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 1147
    invoke-static {v3}, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->a(Ljava/io/InputStream;)I

    move-result v2

    iput v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->g:I

    .line 1148
    invoke-static {v3}, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->a(Ljava/io/InputStream;)I

    move-result v2

    iput v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->h:I

    .line 1150
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 1151
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_5

    move v0, v1

    :cond_5
    iput-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->j:Z

    .line 1154
    const/4 v0, 0x2

    and-int/lit8 v2, v2, 0x7

    shl-int/2addr v0, v2

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->k:I

    .line 1155
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->e:I

    .line 1156
    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 1136
    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->b:Z

    if-nez v0, :cond_0

    .line 1137
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->c:[I

    iget v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->k:I

    invoke-static {v3, v0, v2}, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->a(Ljava/io/InputStream;[II)Z

    .line 1138
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->c:[I

    iget v2, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->e:I

    aget v0, v0, v2

    iput v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->d:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 86
    :catch_0
    move-exception v0

    iput-boolean v1, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->b:Z

    goto :goto_4

    .line 94
    :catch_1
    move-exception v0

    goto :goto_5
.end method

.method private static a(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static a(Ljava/io/InputStream;[II)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 166
    sget-object v3, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->i:[B

    monitor-enter v3

    .line 167
    mul-int/lit8 v1, p2, 0x3

    .line 168
    :try_start_0
    sget-object v2, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->i:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 169
    if-ge v2, v1, :cond_0

    .line 170
    monitor-exit v3

    .line 183
    :goto_0
    return v0

    :cond_0
    move v1, v0

    .line 174
    :goto_1
    if-ge v1, p2, :cond_1

    .line 175
    sget-object v2, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->i:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v5, v0, 0xff

    .line 176
    sget-object v0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->i:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 177
    sget-object v6, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->i:[B

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v6, v2

    and-int/lit16 v6, v2, 0xff

    .line 178
    add-int/lit8 v2, v1, 0x1

    const/high16 v7, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v7

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v6

    aput v4, p1, v1

    move v1, v2

    .line 179
    goto :goto_1

    .line 181
    :cond_1
    monitor-exit v3

    .line 183
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->f:[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->h:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage;->g:I

    return v0
.end method
