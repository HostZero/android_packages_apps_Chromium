.class Lorg/chromium/media/AudioManagerAndroid$NonThreadSafe;
.super Ljava/lang/Object;
.source "AudioManagerAndroid.java"


# instance fields
.field private final mThreadId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$NonThreadSafe;->mThreadId:Ljava/lang/Long;

    .line 66
    return-void
.end method
