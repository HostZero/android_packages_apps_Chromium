.class public Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;
.super Ljava/lang/Object;
.source "DataReductionProxySettings.java"


# instance fields
.field private final mOriginal:J

.field private final mReceived:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;->mOriginal:J

    .line 42
    iput-wide p3, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;->mReceived:J

    .line 43
    return-void
.end method

.method public static create(JJ)Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public getOriginal()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;->mOriginal:J

    return-wide v0
.end method

.method public getReceived()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings$ContentLengths;->mReceived:J

    return-wide v0
.end method
