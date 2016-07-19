.class public final Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;
.super Ljava/lang/Object;
.source "MediaUrlResolver.java"


# instance fields
.field private final mPlayable:Z

.field private final mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;->mUri:Ljava/lang/String;

    .line 73
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;->mPlayable:Z

    .line 74
    return-void
.end method


# virtual methods
.method public final getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public final isPlayable()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaUrlResolver$Result;->mPlayable:Z

    return v0
.end method
