.class Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;
.super Ljava/lang/Object;
.source "AudioManagerAndroid.java"


# instance fields
.field private final mId:I

.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;->mId:I

    .line 87
    iput-object p2, p0, Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;->mName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lorg/chromium/media/AudioManagerAndroid$1;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method private id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;->mId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/chromium/media/AudioManagerAndroid$AudioDeviceName;->mName:Ljava/lang/String;

    return-object v0
.end method
