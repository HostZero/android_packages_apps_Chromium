.class public Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;
.super Ljava/lang/Object;
.source "LocalStorageInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final mOrigin:Ljava/lang/String;

.field private final mSize:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;->mOrigin:Ljava/lang/String;

    .line 18
    iput-wide p2, p0, Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;->mSize:J

    .line 19
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;->mOrigin:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeClearCookieData(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;->mOrigin:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/WebsitePreferenceBridge;->nativeClearLocalStorageData(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lorg/chromium/chrome/browser/preferences/website/LocalStorageInfo;->mSize:J

    return-wide v0
.end method
