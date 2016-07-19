.class final Ljp/tomorrowkey/android/gifplayer/BaseGifImage$GifHeaderStream;
.super Ljava/io/ByteArrayInputStream;
.source "BaseGifImage.java"


# direct methods
.method private constructor <init>(Ljp/tomorrowkey/android/gifplayer/BaseGifImage;[B)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Ljp/tomorrowkey/android/gifplayer/BaseGifImage;[BB)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Ljp/tomorrowkey/android/gifplayer/BaseGifImage$GifHeaderStream;-><init>(Ljp/tomorrowkey/android/gifplayer/BaseGifImage;[B)V

    return-void
.end method


# virtual methods
.method public final getPosition()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Ljp/tomorrowkey/android/gifplayer/BaseGifImage$GifHeaderStream;->pos:I

    return v0
.end method
